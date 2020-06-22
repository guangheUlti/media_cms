package io.guangsoft.media.web.modules.sys.controller;

import io.guangsoft.common.crm.wrapper.EntityWrapper;
import io.guangsoft.media.web.modules.oa.entity.OaNotification;
import io.guangsoft.media.web.modules.oa.service.IOaNotificationService;
import io.guangsoft.web.modules.oa.entity.OaNotification;
import io.guangsoft.web.modules.oa.service.IOaNotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class IndexController {
	@Autowired
	private IOaNotificationService oaNotificationService;

    @RequestMapping("index")
    public String showIndex() {
        return "/static/index.html";
    }

	@RequestMapping(value = "/",method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping(value = "${cms.admin.url.prefix}",method = RequestMethod.GET)
	public String index(Model model) {
		// 加载通知公告
		int oaNotificationCount = oaNotificationService
				.selectCount(new EntityWrapper<OaNotification>(OaNotification.class).eq("status", "1"));
		List<OaNotification> oaNotifications = oaNotificationService
				.selectList(new EntityWrapper<OaNotification>(OaNotification.class).eq("status", "1"));
		model.addAttribute("oaNotificationCount", oaNotificationCount);
		model.addAttribute("oaNotifications", oaNotifications);
		// 加载模版
		return "modules/sys/index/index";
	}

}
