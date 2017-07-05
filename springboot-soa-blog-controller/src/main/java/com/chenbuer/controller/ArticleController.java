package com.chenbuer.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.entity.ResultRespone;
import com.chenbuer.service.BlogService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * Blog的controller层
 *
 * @author czy
 *
 */
@RestController
public class ArticleController {

    @Reference
    private BlogService blogService;



    /**
     * 前台查看根据博客id查找文章
     * @param request
     * @return
     */
    @RequestMapping("/article/{id}")
    public ResultRespone aboutMe(HttpServletRequest request, @PathVariable("id")Integer id) {
        ResultRespone resultRespone=new ResultRespone();
        resultRespone.setRetCode(0);
        resultRespone.setRetMsg("SUCCESS");
        resultRespone.setResult(blogService.findById(id));
        return resultRespone;
    }

//    @RequestMapping("login")
//    public String login(User user, HttpServletRequest request) {
//        // 用shiro来进行用户认证
//        Subject subject = SecurityUtils.getSubject();
//        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(user.getUserName(),
//                CryptographyUtil.md5(user.getPassword(), "chenbuer"));
//        try {
//            subject.login(usernamePasswordToken);
//            return "redirect:/admin/admin.jsp";
//        } catch (Exception e) {
//            e.printStackTrace();
//            request.setAttribute("user", user);
//            request.setAttribute("errorInfo", "用户名或密码错误!");
//            //下面这个是要写的，开始自己忘了
//            return "login";
//        }
//
//    }


}
