package com.chenbuer.controller.admin;

import com.alibaba.dubbo.config.annotation.Reference;
import com.chenbuer.config.FinalParam;
import com.chenbuer.entity.*;
import com.chenbuer.service.BlogService;
import com.chenbuer.service.BlogTypeService;
import com.chenbuer.util.PageUtil;
import com.chenbuer.util.StringUtil;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class AdminBlogTypeController {


    @Reference
    private BlogTypeService blogTypeService;


    @RequestMapping(value = {"/admin/blogsTypes"},method = RequestMethod.GET)
    public ResultRespone getBlogsTypes() throws Exception {
        ResultRespone resultRespone=new ResultRespone();
        List<BlogType> blogTypes = blogTypeService.countList();
        if (blogTypes!=null){
            //由于Bootstrap-vue对于数据结构有特殊需求，所以在后端给转换了。不然js转有点麻烦
            List<VueDropdownList> newBlogTypes=new ArrayList();
            for (int i=0;i<blogTypes.size();i++) {
                VueDropdownList vueDropdownList = new VueDropdownList();
                vueDropdownList.setText(blogTypes.get(i).getTypeName());
                vueDropdownList.setValue(blogTypes.get(i).getId());
                newBlogTypes.add(vueDropdownList);
            }

            resultRespone.setRetMsg("SUCCESS");
            resultRespone.setRetCode(0);
            resultRespone.setResult(newBlogTypes);
        }else {
            resultRespone.setRetCode(-1);
            resultRespone.setRetMsg("GET FAILD");
        }
        return resultRespone;

    }


}

class VueDropdownList{
    private String text;
    private Integer value;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }
}
