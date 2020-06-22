package io.guangsoft.media.web.modules.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("manage")
public class ManageController {

    @RequestMapping("index")
    public String showIndex() {
        return "/static/manage/index.html";
    }

}
