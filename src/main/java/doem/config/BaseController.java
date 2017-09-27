package doem.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.UnauthenticatedException;
import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.security.sasl.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by JJJ on 2017/9/27.
 */
public abstract class BaseController {

    /**
     * 登录认证异常
     */
    @ExceptionHandler({ UnauthenticatedException.class, AuthenticationException.class })
    public void authenticationException(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (isAjaxRequest(request)) {
            // 输出JSON
            Map<String,Object> map = new HashMap<>();
            map.put("code", "-999");
            map.put("message", "未登录");
            writeJson(map, response);
        } else {
            response.sendRedirect("/login");
        }
    }

    /**
     * 权限异常
     */
    @ExceptionHandler({ UnauthorizedException.class, AuthorizationException.class })
    public String authorizationException(HttpServletRequest request, HttpServletResponse response) {
        if (isAjaxRequest(request)) {
            // 输出JSON
            Map<String,Object> map = new HashMap<>();
            map.put("code", "-998");
            map.put("message", "无权限");
            writeJson(map, response);
            return null;
        } else {
            return "redirect:/403";
        }
    }

    /**
     * 输出JSON
     *
     * @param response
     * @author SHANHY
     * @create 2017年4月4日
     */
    private void writeJson(Map<String,Object> map, HttpServletResponse response) {
        PrintWriter out = null;
        ObjectMapper mapper = new ObjectMapper();
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json; charset=utf-8");
            out = response.getWriter();
            out.write(mapper.writeValueAsString(map));
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
        }
    }
    public static boolean isAjaxRequest(HttpServletRequest request) {
        String requestedWith = request.getHeader("content-type");
        if (requestedWith != null && requestedWith.equalsIgnoreCase("application/x-www-form-urlencoded")) {
            return true;
        } else {
            return false;
        }
    }

}
