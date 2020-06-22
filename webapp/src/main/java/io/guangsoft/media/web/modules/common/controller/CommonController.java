package io.guangsoft.media.web.modules.common.controller;

import io.guangsoft.common.mvc.annotation.ViewPrefix;
import io.guangsoft.common.mvc.controller.BaseController;
import io.guangsoft.common.utils.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("${cms.admin.url.prefix}/common")
@ViewPrefix("modules/common")
public class CommonController extends BaseController {
	/**
	 * 图表资源
	 */
	@RequestMapping(value = "icons", method = RequestMethod.GET)
	public String list(Model model) {
		return display("icons");
	}

	@RequestMapping(value = "treeselect", method = RequestMethod.GET)
	public String treeselect(Model model, HttpServletRequest request) {
		model.addAttribute("url", request.getParameter("url")); // 树结构数据URL
		String multiselect = request.getParameter("multiselect");
		String chkboxType = request.getParameter("chkboxType");
		model.addAttribute("chkboxType", chkboxType); // 父子关联 
		if (StringUtils.isEmpty(multiselect)) {
			multiselect = Boolean.TRUE + "";
		}
		model.addAttribute("multiselect", multiselect); // 是否多选
		String selectNodes = request.getParameter("selectNodes");
		model.addAttribute("selectNodes", selectNodes);// 默认值
		return display("treeselect");
	}
}
