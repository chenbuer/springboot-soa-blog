package com.chenbuer.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.entity.ResultRespone;
import com.chenbuer.service.LinkService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LinkController {


    @Reference
    private LinkService linkService;


    @RequestMapping("/getLinks")
    public ResultRespone getLinks() throws Exception {
        ResultRespone resultRespone=new ResultRespone();
        resultRespone.setResult(linkService.list());
        resultRespone.setRetCode(0);
        resultRespone.setRetMsg("SUCCESS");
        return resultRespone;
    }

}
