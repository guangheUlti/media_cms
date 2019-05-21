package io.guangsoft.web.modules.demo.controller;


import io.guangsoft.common.mvc.annotation.ViewPrefix;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.guangsoft.common.mvc.controller.BaseController;

/**
 */

@Controller
@RequestMapping("${jeeweb.admin.url.prefix}/demo/grid")
@ViewPrefix("modules/demo/grid")
public class GridDemoController extends BaseController {

	/**
	 * @return
	 * @return: String
	 */
	@RequestMapping("/list")
	public String list() {
		return display("list");
	}
	/**
	 * @return
	 * @return: String
	 */
	@RequestMapping("/list_inline")
	public String listLline() {
		return display("list-inline");
	}

	 

}
