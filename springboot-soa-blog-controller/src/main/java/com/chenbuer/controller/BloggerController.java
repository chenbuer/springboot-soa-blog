package com.chenbuer.controller;

import javax.servlet.http.HttpServletRequest;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.entity.LoginUserInfo;
import com.chenbuer.entity.ResultRespone;
import com.chenbuer.entity.User;
import com.chenbuer.util.CryptographyUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.*;

import com.chenbuer.service.UserService;

/**
 * 用户controller层
 *
 * @author czy
 *
 */
@RestController
public class BloggerController {

    @Reference
    private UserService userService;



    /**
     * 前台查看关于博主的controller层
     * @param request
     * @return
     */
    @RequestMapping("/aboutMe")
    public ResultRespone aboutMe(HttpServletRequest request) {
        ResultRespone resultRespone=new ResultRespone();
        resultRespone.setRetCode(0);
        resultRespone.setRetMsg("SUCCESS");
        resultRespone.setResult(userService.find());
        return resultRespone;
    }

    @RequestMapping(value = "/login")
    public ResultRespone login(@RequestBody User user, HttpServletRequest request) {
        ResultRespone resultRespone=new ResultRespone();

        User userWithRealInfo = userService.getUserByUserName(user.getUserName());
        if(userWithRealInfo.getPassword().equals(CryptographyUtil.md5(user.getPassword(),"chenbuer"))){
            resultRespone.setRetCode(0);
            resultRespone.setRetMsg("SUCCESS");
            resultRespone.setResult(userWithRealInfo);
        }else {
            resultRespone.setRetCode(-1);
            resultRespone.setRetMsg("error user or password");
        }

        /*
        // 用shiro来进行用户认证
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(user.getUserName(),
                CryptographyUtil.md5(user.getPassword(), "chenbuer"));
        try {
            subject.login(usernamePasswordToken);
            resultRespone.setRetCode(0);
            resultRespone.setRetMsg("SUCCESS");
        } catch (Exception e) {
            //认证失败
            e.printStackTrace();
            request.setAttribute("user", user);
            request.setAttribute("errorInfo", "用户名或密码错误!");
            resultRespone.setRetCode(-1);
            resultRespone.setRetMsg("SUCCESS");

        }
           */
        return resultRespone;

    }


}
