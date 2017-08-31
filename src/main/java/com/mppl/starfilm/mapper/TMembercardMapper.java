package com.mppl.starfilm.mapper;

import com.mppl.starfilm.pojo.TMembercard;
import com.mppl.starfilm.pojo.TMembercardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TMembercardMapper {
    int countByExample(TMembercardExample example);

    int deleteByExample(TMembercardExample example);

    int insert(TMembercard record);

    int insertSelective(TMembercard record);

    List<TMembercard> selectByExample(TMembercardExample example);

    int updateByExampleSelective(@Param("record") TMembercard record, @Param("example") TMembercardExample example);

    int updateByExample(@Param("record") TMembercard record, @Param("example") TMembercardExample example);
}