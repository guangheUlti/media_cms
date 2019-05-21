package io.guangsoft.web.modules.oa.controller;


import io.guangsoft.common.mvc.annotation.ViewPrefix;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.guangsoft.common.crm.controller.BaseCRUDController;
import io.guangsoft.common.security.shiro.authz.annotation.RequiresPathPermission;
import io.guangsoft.web.modules.oa.entity.OaNotification;

/**   
 * @date 2017-06-10 17:15:17
 */
@Controller
@RequestMapping("${cms.admin.url.prefix}/oa/oanotification")
@ViewPrefix("modules/oa/oanotification")
@RequiresPathPermission("oa:oanotification")
public class OaNotificationController extends BaseCRUDController<OaNotification, String> {

}
