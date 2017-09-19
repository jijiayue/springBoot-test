package doem.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import doem.config.aop.Monitor;
import doem.config.redis.IRedisService;
import doem.dao.UserMapper;
import doem.model.SysUser;
import doem.model.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by JJJ on 2017/9/7.
 */
@RestController
public class IndexController {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private IRedisService iRedisService;


    @RequestMapping(value = "/index/{id}")
    @CrossOrigin //跨域返回json注解
    public Map<String, Object> view(@PathVariable Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id", id);
        return map;
    }

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    @ResponseBody //返回json注解
    public Map<String, Object> index(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id", id);
        return map;
    }

    //mybaits测试
    @RequiresPermissions("sys:view")
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView getindex(Integer id, ModelMap modelMap) {
        User user = userMapper.selectByPrimaryKey(new Long("1"));
        modelMap.put("name", "liuzhiqiang");
        modelMap.put("SysUser", user);
        return new ModelAndView("index", modelMap);
    }

    //aop redis测试
    @Monitor(logTitle = "aop测试", logType = "aop", text = "12345678")//自定义注解
    @RequestMapping(value = "/redis", method = RequestMethod.GET)
    public ModelAndView redis(Integer id, ModelMap modelMap) {
        iRedisService.set("name", id.toString());
        modelMap.put("redis", iRedisService.get("name"));
        return new ModelAndView("index", modelMap);
    }

    //分页插件测试
    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public Map<String, Object> page(HttpServletRequest request, Integer pageNum, Integer pageSize) {
        pageNum = pageNum == null ? 1 : pageNum;
        pageSize = pageSize == null ? 10 : pageSize;
        PageHelper.startPage(pageNum, pageSize);
        List<User> list = userMapper.gitListUser();
        PageInfo pageInfo = new PageInfo(list);
        //Page page = (Page) list;
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("PageInfo", pageInfo);
        //map.put("Page",page);
        return map;
    }



    @RequestMapping("/login")
    public void loginUser(HttpServletResponse response,ModelMap modelMap,String loginName,String passWord,HttpSession session) {
        UsernamePasswordToken usernamePasswordToken=new UsernamePasswordToken(loginName,passWord);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(usernamePasswordToken);   //完成登录
            SysUser user=(SysUser) subject.getPrincipal();
            session.setAttribute("user", user);
            response.sendRedirect("index");
        } catch(Exception e) {
            System.out.println(e);
        }

    }

}
