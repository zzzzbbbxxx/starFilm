package com.mppl.starfilm.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mppl.starfilm.pojo.User;
import com.mppl.starfilm.service.IUserService;
@Controller
@RequestMapping("/user")
public class UserController { 
    
    Log log = LogFactory.getLog(this.getClass());
    
    @Autowired
    IUserService userService;
    
    @RequestMapping("/registry.do")
    public String registry(User user,Model model){
        userService.registry(user);
        return "index";
    }
    
    @RequestMapping("/login")
    public String login (User user,Model model) {
        if (userService.login(user)) {
            log.info("===== User " + user.getUsername() + " login success =====");
            model.addAttribute("user", user);
            return "member/main/memberCenter";
        } else {
            log.info("===== User " + user.getUsername() + " login failed =====");
            model.addAttribute("loginMessage", "用户信息有误");
            return "forward:/user/toLogin.do";
        }
    }
    
    @RequestMapping("/toRegistry")
    public String toRegistry() {
        return "user/registry";
    }
    
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "user/login";
    }
    
    @RequestMapping("/findPassword")
    public String findPassword() {
        return "user/findPassword";
    }
}
