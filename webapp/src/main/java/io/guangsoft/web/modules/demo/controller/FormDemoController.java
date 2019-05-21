package io.guangsoft.web.modules.demo.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import io.guangsoft.common.mvc.annotation.ViewPrefix;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import io.guangsoft.common.mvc.controller.BaseController;

/**
 */
@Controller
@RequestMapping("${jeeweb.admin.url.prefix}/demo/form")
@ViewPrefix("modules/demo/form")
public class FormDemoController extends BaseController {

	/**
	 * @return
	 * @return: String
	 */
	@RequestMapping("/editor")
	public String editor() {
		return display("editor");
	}

	/**
	 * @return
	 * @return: String
	 */
	@RequestMapping("/upload")
	public String upload() {
		return display("upload");
	}

	@RequestMapping("/combox")
	public String combox(HttpServletRequest request) {
		return display("combox");
	}

	@RequestMapping("/ajaxCombox")
	@ResponseBody
	public List<?> ajaxCombox(HttpServletRequest request) {
		//String keyword = request.getParameter("keyword");
		return null;
	}

}
