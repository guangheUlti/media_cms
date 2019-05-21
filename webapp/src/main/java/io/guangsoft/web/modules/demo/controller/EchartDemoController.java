package io.guangsoft.web.modules.demo.controller;

import io.guangsoft.common.mvc.annotation.ViewPrefix;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.guangsoft.common.mvc.controller.BaseController;

/**
 */

@Controller
@RequestMapping("${jeeweb.admin.url.prefix}/demo/echart")
@ViewPrefix("modules/demo/echart")
public class EchartDemoController extends BaseController {

	/**
	 * @return
	 * @return: String
	 */
	@RequestMapping("/index")
	public String echart() {
		return display("index");
	}
 
}
