package com.mppl.starfilm.mapper;

import com.mppl.starfilm.pojo.TUsersafe;
import com.mppl.starfilm.pojo.TUsersafeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TUsersafeMapper {
    int countByExample(TUsersafeExample example);

    int deleteByExample(TUsersafeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TUsersafe record);

    int insertSelective(TUsersafe record);

    List<TUsersafe> selectByExample(TUsersafeExample example);

    TUsersafe selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TUsersafe record, @Param("example") TUsersafeExample example);

    int updateByExample(@Param("record") TUsersafe record, @Param("example") TUsersafeExample example);

    int updateByPrimaryKeySelective(TUsersafe record);

    int updateByPrimaryKey(TUsersafe record);
}