package com.mppl.starfilm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mppl.starfilm.mapper.UserMapper;
import com.mppl.starfilm.pojo.User;
import com.mppl.starfilm.pojo.UserExample;
import com.mppl.starfilm.pojo.UserExample.Criteria;
import com.mppl.starfilm.service.IUserService;
import com.mppl.starfilm.util.MD5Util;


@Service
public class UserServiceImpl implements IUserService{

    @Autowired
    private UserMapper userMapper;
    
    public boolean login(User user) {
        //这个变量一定要是局部变量，重新实例一次
        UserExample example = new UserExample();
        Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(user.getUsername());
        //MD5加密
        criteria.andPasswordEqualTo(MD5Util.md5(user.getPassword()));
        if (userMapper.countByExample(example) > 0) {
            return true;
        }
        return false;
    }

    public boolean registry(User user) {
        //MD5加密
        user.setPassword(MD5Util.md5(user.getPassword()));
        if (userMapper.insert(user) > 0) {
            return true;
        }
        return false;
    }

    public boolean updateUser(User user) {

        if (userMapper.updateByUser(user) > 0) {
            return true;
        }
        return false;
    }

    public User findUserByUserName(String userName) {
        UserExample example = new UserExample();
        Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(userName);
        List<User> userList = userMapper.selectByExample(example);
        if (userList.size() > 0) {
            return userList.get(0);
        } else {
            return new User();
        }
    }

    public User findUserById(Integer id) {
        UserExample example = new UserExample();
        Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(id);
        List<User> userList = userMapper.selectByExample(example);
        if (userList.size() > 0) {
            return userList.get(0);
        } else {
            return new User();
        }
    }

}
