package com.mppl.starfilm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mppl.starfilm.pojo.Usersafe;
import com.mppl.starfilm.pojo.UsersafeExample;

public interface UsersafeMapper {
    int countByExample(UsersafeExample example);

    int deleteByExample(UsersafeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Usersafe record);

    int insertSelective(Usersafe record);

    List<Usersafe> selectByExample(UsersafeExample example);

    Usersafe selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Usersafe record, @Param("example") UsersafeExample example);

    int updateByExample(@Param("record") Usersafe record, @Param("example") UsersafeExample example);

    int updateByPrimaryKeySelective(Usersafe record);

    int updateByPrimaryKey(Usersafe record);
}