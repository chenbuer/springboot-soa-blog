package com.chenbuer.controller.admin;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.config.FinalParam;
import com.chenbuer.entity.*;
import com.chenbuer.service.BlogService;
import com.chenbuer.service.UserService;
import com.chenbuer.util.PageUtil;
import com.chenbuer.util.StringUtil;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class AdminAboutMeController {


    @Reference
    private UserService userService;



    @RequestMapping("/admin/updateAboutMe")
    public ResultRespone updateAboutMe(@RequestBody User user){
    System.out.println("--------------");
    System.out.println(user);
    System.out.println("--------------");
    ResultRespone resultRespone=new ResultRespone();
    userService.updateUser(user);
    resultRespone.setRetCode(0);
    resultRespone.setRetMsg("SUCCESS");
    return resultRespone;
}


}
