package com.mppl.starfilm.mapper;

import com.mppl.starfilm.pojo.Membercard;
import com.mppl.starfilm.pojo.MembercardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MembercardMapper {
    int countByExample(MembercardExample example);

    int deleteByExample(MembercardExample example);

    int insert(Membercard record);

    int insertSelective(Membercard record);

    List<Membercard> selectByExample(MembercardExample example);

    int updateByExampleSelective(@Param("record") Membercard record, @Param("example") MembercardExample example);

    int updateByExample(@Param("record") Membercard record, @Param("example") MembercardExample example);
}