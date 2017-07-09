package com.chenbuer.controller.admin;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.config.FinalParam;
import com.chenbuer.entity.*;
import com.chenbuer.service.BlogService;
import com.chenbuer.util.PageUtil;
import com.chenbuer.util.StringUtil;
import org.springframework.boot.autoconfigure.integration.IntegrationAutoConfiguration;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class AdminBlogController {


    @Reference
    private BlogService blogService;


    @RequestMapping(value = {"/admin/blogsWithPage"})
    public ResultResponeForVueTable getIndexContent(@RequestParam(value = "page", required = false) String page,//分页,表示第几个分页
                                                    @RequestParam(value = "typeId", required = false) String typeId,//按日志类别查询显示
                                                    @RequestParam(value = "releaseDateStr", required = false) String releaseDateStr,//按日期类别查询显示
                                                    @RequestParam(value = "per_page", required = false) Integer perPage,//表示每页展示多少文章数目
                                                    HttpServletRequest request,
                                                    ModelMap model) throws Exception {
        ResultResponeForVueTable resultResponeForVueTable=new ResultResponeForVueTable();
        StringBuffer param = new StringBuffer();
        if (StringUtil.isEmpty(page)) {
            page = "1";
        }
        if (perPage==null){
            perPage=FinalParam.ONE_PAGE_SIZE;
        }
        //获取到首页的内容
        PageBean pageBean = new PageBean(Integer.parseInt(page), perPage);
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
        resultResponeForVueTable.setData(blogPageList);



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

        PageInfo pageInfo=PageUtil.getPageInfo(blogService.getBlogCount(pageMap),Integer.parseInt(page),perPage,resultResponeForVueTable);

        //给vueTable返回的其他信息的完善
        resultResponeForVueTable.setCurrent_page(Integer.parseInt(page));
        resultResponeForVueTable.setNext_page_url(null);
        resultResponeForVueTable.setPrev_page_url(null);
        resultResponeForVueTable.setPer_page(perPage);
        resultResponeForVueTable.setCurrent_page(pageInfo.getCurPage());

        return resultResponeForVueTable;
    }

    @RequestMapping("/admin/blog/{id}/del")
    public ResultRespone delBlog(@PathVariable("id") Integer id){
        ResultRespone resultRespone = new ResultRespone();
        blogService.delete(id);
        resultRespone.setResult(0);
        resultRespone.setRetMsg("SUCCESS");

        return resultRespone;
    }


}
