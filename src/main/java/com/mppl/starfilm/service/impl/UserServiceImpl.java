package com.mppl.starfilm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mppl.starfilm.mapper.UserMapper;
import com.mppl.starfilm.pojo.User;
import com.mppl.starfilm.pojo.UserExample;
import com.mppl.starfilm.pojo.UserExample.Criteria;
import com.mppl.starfilm.service.IUserService;
import javax.annotation.Resource;

@Service
public class UserServiceImpl implements IUserService{

    @Resource
    UserMapper userMapper;
    
    UserExample example = new UserExample();

    public boolean login(User user) {
        
        Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(user.getUsername());
        criteria.andPasswordEqualTo(user.getPassword());
        if (userMapper.countByExample(example) > 0) {
            return true;
        }
        return false;
    }

    public boolean registry(User user) {
        
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
