package com.chenbuer.controller;

import java.nio.channels.FileChannel.MapMode;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.config.FinalParam;
import com.chenbuer.entity.PageInfo;
import com.chenbuer.entity.ResultRespone;
import com.sun.xml.internal.bind.v2.model.annotation.FieldLocatable;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chenbuer.entity.Blog;
import com.chenbuer.entity.PageBean;
import com.chenbuer.service.BlogService;
import com.chenbuer.util.PageUtil;
import com.chenbuer.util.StringUtil;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BlogController {


    @Reference
    private BlogService blogService;


    @RequestMapping(value = {"/","/index","blogsWithPage"})
    public ResultRespone getIndexContent(@RequestParam(value = "pageId", required = false) String page,//分页,表示第几个分页
                                         @RequestParam(value = "typeId", required = false) String typeId,//按日志类别查询显示
                                         @RequestParam(value = "releaseDateStr", required = false) String releaseDateStr,//按日期类别查询显示
                                         HttpServletRequest request,
                                         ModelMap model) throws Exception {
        ResultRespone resultRespone=new ResultRespone();
        StringBuffer param = new StringBuffer();
        if (StringUtil.isEmpty(page)) {
            page = "1";
        }
        //获取到首页的内容
        PageBean pageBean = new PageBean(Integer.parseInt(page), FinalParam.ONE_PAGE_SIZE);
        Map map = new HashMap();
        map.put("start", pageBean.getStart());
        map.put("pageSize", pageBean.getPageSize());
        if (StringUtil.isNotEmpty(typeId)) {
            map.put("typeId", Integer.parseInt(typeId));
        }
        if (StringUtil.isNotEmpty(releaseDateStr)) {
            map.put("releaseDateStr", releaseDateStr);
        }
        List<Blog> blogPageList = blogService.listBlogWithPage(map);
        model.addAttribute("blogPageList", blogPageList);

        //获取到分页代码
        if (StringUtil.isNotEmpty(typeId)) {
            param.append("typeId=" + typeId + "&");
        }
        if (StringUtil.isNotEmpty(releaseDateStr)) {
            param.append("releaseDateStr=" + releaseDateStr + "&");
        }
        Map pageMap = new HashMap();
        if (StringUtil.isNotEmpty(typeId)) {
            pageMap.put("typeId", Integer.parseInt(typeId));
        }
        if (StringUtil.isNotEmpty(releaseDateStr)) {
            pageMap.put("releaseDateStr", releaseDateStr);
        }

        PageInfo pageInfo=PageUtil.getPageInfo(blogService.getBlogCount(pageMap),Integer.parseInt(page),FinalParam.ONE_PAGE_SIZE,null);
        model.addAttribute("pageInfo", pageInfo);
        resultRespone.setRetCode(0);
        resultRespone.setResult(model);
        resultRespone.setRetMsg("SUCCESS");
        return resultRespone;
    }

    @RequestMapping("/type/{typeName}")
    public ResultRespone getBlogsByTypeName(@PathVariable("typeName")String typeName){
        ResultRespone resultRespone=new ResultRespone();
        resultRespone.setRetCode(0);
        resultRespone.setResult(blogService.getBlogsByTypeName(typeName));
        resultRespone.setRetMsg("SUCCESS");
        return resultRespone;

    }


}
