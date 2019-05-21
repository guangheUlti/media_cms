package io.guangsoft.web.modules.task.controller;

import io.guangsoft.web.aspectj.annotation.Log;
import io.guangsoft.web.aspectj.enums.LogType;
import io.guangsoft.web.modules.task.entity.ScheduleJobLog;
import io.guangsoft.web.modules.task.service.IScheduleJobLogService;
import io.guangsoft.common.http.PageResponse;
import io.guangsoft.common.http.Response;
import io.guangsoft.common.mvc.annotation.ViewPrefix;
import io.guangsoft.common.mvc.controller.BaseBeanController;
import io.guangsoft.common.crm.wrapper.EntityWrapper;
import io.guangsoft.common.query.annotation.PageableDefaults;
import io.guangsoft.common.query.data.PropertyPreFilterable;
import io.guangsoft.common.query.data.Queryable;
import io.guangsoft.common.query.utils.QueryableConvertUtils;
import io.guangsoft.common.security.shiro.authz.annotation.RequiresMethodPermissions;
import io.guangsoft.common.security.shiro.authz.annotation.RequiresPathPermission;
import io.guangsoft.common.utils.StringUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializeFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 */

@RestController
@RequestMapping("${jeeweb.admin.url.prefix}/task/schedule/job/log")
@ViewPrefix("modules/task/schedule/job")
@RequiresPathPermission("task:schedule:joblog")
@Log(title = "计划任务日志")
public class ScheduleJobLogController extends BaseBeanController<ScheduleJobLog> {

    @Autowired
    private IScheduleJobLogService scheduleJobLogService;

    @GetMapping
    @RequiresMethodPermissions("view")
    public ModelAndView list(Model model, HttpServletRequest request, HttpServletResponse response) {
        return displayModelAndView("job_log_list");
    }
    /**
     * 根据页码和每页记录数，以及查询条件动态加载数据
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "ajaxList", method = { RequestMethod.GET, RequestMethod.POST })
    @PageableDefaults(sort = "id=desc")
    @Log(logType = LogType.SELECT)
    @RequiresMethodPermissions("list")
    public void ajaxList(Queryable queryable, PropertyPreFilterable propertyPreFilterable, HttpServletRequest request,
                          HttpServletResponse response) throws IOException {
        EntityWrapper<ScheduleJobLog> entityWrapper = new EntityWrapper<>(entityClass);
        entityWrapper.orderBy("createTime",false);
        propertyPreFilterable.addQueryProperty("id");
        // 预处理
        QueryableConvertUtils.convertQueryValueToEntityValue(queryable, entityClass);
        SerializeFilter filter = propertyPreFilterable.constructFilter(entityClass);
        PageResponse<ScheduleJobLog> pagejson = new PageResponse<>(scheduleJobLogService.list(queryable,entityWrapper));
        String content = JSON.toJSONString(pagejson, filter);
        StringUtils.printJson(response,content);
    }

    @PostMapping("{id}/delete")
    @Log(logType = LogType.DELETE)
    @RequiresMethodPermissions("delete")
    public Response delete(@PathVariable("id") String id) {
        scheduleJobLogService.deleteById(id);
        return Response.ok("删除成功");
    }

    @PostMapping("batch/delete")
    @Log(logType = LogType.DELETE)
    @RequiresMethodPermissions("delete")
    public Response batchDelete(@RequestParam("ids") String[] ids) {
        List<String> idList = java.util.Arrays.asList(ids);
        scheduleJobLogService.deleteBatchIds(idList);
        return Response.ok("删除成功");
    }
}