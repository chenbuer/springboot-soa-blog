package com.chenbuer.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.config.FinalParam;
import com.chenbuer.entity.Blog;
import com.chenbuer.entity.PageBean;
import com.chenbuer.entity.ResultRespone;
import com.chenbuer.service.BlogService;
import com.chenbuer.service.BlogTypeService;
import com.chenbuer.util.PageUtil;
import com.chenbuer.util.StringUtil;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class BlogTypeController {


    @Reference
    private BlogTypeService blogTypeService;


    @RequestMapping("/blogTypes")
    public ResultRespone getBlogTypest() throws Exception {
        ResultRespone resultRespone=new ResultRespone();
        resultRespone.setResult(blogTypeService.countList());
        resultRespone.setRetCode(0);
        resultRespone.setRetMsg("SUCCESS");
        return resultRespone;
    }

}
