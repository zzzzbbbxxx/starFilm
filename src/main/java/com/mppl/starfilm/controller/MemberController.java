package com.mppl.starfilm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {
    
    @RequestMapping("member_left")
    public String left() {
        return "member/main/leftbar";
    }
    
    @RequestMapping("member_center")
    public String center() {
        return "member/main/center";
    }
}
