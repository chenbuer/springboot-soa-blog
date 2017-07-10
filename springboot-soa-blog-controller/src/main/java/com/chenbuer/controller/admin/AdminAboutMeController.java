package com.chenbuer.controller.admin;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.entity.*;
import com.chenbuer.service.UserService;
import org.springframework.web.bind.annotation.*;

@RestController
public class AdminAboutMeController {

    @Reference
    private UserService userService;

    @RequestMapping("/admin/updateAboutMe")
    public ResultRespone updateAboutMe(@RequestBody User user){
    ResultRespone resultRespone=new ResultRespone();
    userService.updateUser(user);
    resultRespone.setRetCode(0);
    resultRespone.setRetMsg("SUCCESS");
    return resultRespone;
}


}
