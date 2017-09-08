package com.mppl.starfilm.controller;

import org.jfree.util.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mppl.starfilm.pojo.User;
import com.mppl.starfilm.service.IUserService;
@Controller
@RequestMapping("/user")
public class UserController { 
    @Autowired
    IUserService userService;
    
    @RequestMapping("/registry.do")
    public String registry(User user,Model model){
        userService.registry(user);
        return "index";
    }
    
    @RequestMapping("/toRegistry")
    public String toRegistry() {
        return "user/registry";
    }
    
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "user/login";
    }
}
