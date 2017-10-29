package demo.config.Shiro;

/**
 * Created by JJJ on 2017/9/19.
 */

import demo.dao.SysUserMapper;
import demo.model.SysUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Set;

/**
 *
 * shiro 认证 + 授权   重写
 *
 */
public class MyShiroRealm extends AuthorizingRealm {

    @Autowired
    SysUserMapper sysUserService;

    public MyShiroRealm() {
        super();
    }
    /**
     *  认证信息，主要针对用户登录，
     */
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken authcToken) throws AuthenticationException {
        //仅支持UsernamePasswordToken类型的Token
        UsernamePasswordToken utoken=(UsernamePasswordToken) authcToken;
        SysUser sysUser = new SysUser();
        sysUser.setLoginName(utoken.getUsername());
        sysUser.setPassWord(new String(utoken.getPassword()));
        //根据账号密码查用户信息
        SysUser user = sysUserService.getSysUserLogin(sysUser);
        if(null == user){
            throw new AccountException("帐号或密码不正确！");
            /**
             * 如果用户的status为禁用。那么就抛出<code>DisabledAccountException</code>
             */
        }else if (2 == user.getLoginFlag()) {//用户被关闭
            throw new DisabledAccountException("用户被关闭！");

        }
        // 如果身份认证验证成功，返回一个AuthenticationInfo实现；
        return new SimpleAuthenticationInfo(user, user.getPassWord(),this.getClass().getName());
    }

    /**
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        SimpleAuthorizationInfo info =  new SimpleAuthorizationInfo();
        SysUser userInfo  = (SysUser)principals.getPrimaryPrincipal();
        //根据用户ID查询权限（permission），放入到Authorization里。
        Set<String> permissions = sysUserService.findPermissionByUserId(userInfo.getId());
        info.setStringPermissions(permissions);
        return info;
    }
    /**
     * 清空当前用户权限信息
     */
    public  void clearCachedAuthorizationInfo() {
        PrincipalCollection principalCollection = SecurityUtils.getSubject().getPrincipals();
        SimplePrincipalCollection principals = new SimplePrincipalCollection(
                principalCollection, getName());
        super.clearCachedAuthorizationInfo(principals);
    }
    /**
     * 指定principalCollection 清楚
     */
    public void clearCachedAuthorizationInfo(PrincipalCollection principalCollection) {
        SimplePrincipalCollection principals = new SimplePrincipalCollection(
                principalCollection, getName());
        super.clearCachedAuthorizationInfo(principals);
    }
}

