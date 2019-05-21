package io.guangsoft.web.modules.oss.controller;

import io.guangsoft.common.http.PageResponse;
import io.guangsoft.common.http.Response;
import io.guangsoft.common.mvc.annotation.ViewPrefix;
import io.guangsoft.common.mvc.controller.BaseBeanController;
import io.guangsoft.common.crm.wrapper.EntityWrapper;
import io.guangsoft.common.query.annotation.PageableDefaults;
import io.guangsoft.common.query.data.PropertyPreFilterable;
import io.guangsoft.common.query.data.Queryable;
import io.guangsoft.common.query.utils.QueryableConvertUtils;
import io.guangsoft.common.security.shiro.authz.annotation.RequiresPathPermission;
import io.guangsoft.common.utils.StringUtils;
import io.guangsoft.web.modules.oss.entity.Attachment;
import io.guangsoft.web.modules.oss.service.IAttachmentService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializeFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 */
@Controller
@RequestMapping("${jeeweb.admin.url.prefix}/oss/attachment")
@ViewPrefix("modules/oss/attachment")
@RequiresPathPermission("oss:attachment")
public class AttachmentController extends BaseBeanController<Attachment> {

    @Autowired
    private IAttachmentService attachmentService;



    //@RequiresMethodPermissions("list")
    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model, HttpServletRequest request, HttpServletResponse response) {
        return display("list");
    }

    /**
     * 根据页码和每页记录数，以及查询条件动态加载数据
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "ajaxList", method = { RequestMethod.GET, RequestMethod.POST })
    @PageableDefaults(sort = "id=desc")
    private void ajaxList(Queryable queryable, PropertyPreFilterable propertyPreFilterable, HttpServletRequest request,
                          HttpServletResponse response) throws IOException {
        EntityWrapper<Attachment> entityWrapper = new EntityWrapper<Attachment>(entityClass);
        propertyPreFilterable.addQueryProperty("id");
        // 预处理
        QueryableConvertUtils.convertQueryValueToEntityValue(queryable, entityClass);
        SerializeFilter filter = propertyPreFilterable.constructFilter(entityClass);
        //加入条件
        entityWrapper.orderBy("uploadTime",false);
        PageResponse<Attachment> pagejson = new PageResponse<Attachment>(attachmentService.list(queryable,entityWrapper));
        String content = JSON.toJSONString(pagejson, filter);
        StringUtils.printJson(response,content);
    }

    @RequestMapping(value = "{id}/delete", method = RequestMethod.POST)
    @ResponseBody
    public Response delete(@PathVariable("id") String id) {
        attachmentService.deleteById(id);
        return Response.ok();
    }

    @RequestMapping(value = "batch/delete", method = { RequestMethod.GET, RequestMethod.POST })
    @ResponseBody
    public Response batchDelete(@RequestParam(value = "ids", required = false) String[] ids) {
        List<String> idList = java.util.Arrays.asList(ids);
        attachmentService.deleteBatchIds(idList);
        return Response.ok("删除成功");
    }

}