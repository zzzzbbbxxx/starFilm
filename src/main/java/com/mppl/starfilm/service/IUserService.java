package com.mppl.starfilm.service;

import org.springframework.stereotype.Service;

import com.mppl.starfilm.pojo.User;

public interface IUserService {
    
    boolean login(User user);
    
    boolean registry(User user);
    
    boolean updateUser(User user);
    
    User findUserByUserName(String userName);
    
    User findUserById(Integer id);
}
