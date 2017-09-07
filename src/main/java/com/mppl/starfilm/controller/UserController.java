package com.mppl.starfilm.controller;

import org.jfree.util.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mppl.starfilm.pojo.User;
import com.mppl.starfilm.service.IUserService;
import javax.annotation.Resource;
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    IUserService userService;
    
    @RequestMapping("/registry.do")
    public String registry(User user){
        Log.info("method registry started");
        userService.registry(user);
        return "index.jsp";
    }
}
