package com.mppl.starfilm.mapper;

import com.mppl.starfilm.pojo.TComment;
import com.mppl.starfilm.pojo.TCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TCommentMapper {
    int countByExample(TCommentExample example);

    int deleteByExample(TCommentExample example);

    int insert(TComment record);

    int insertSelective(TComment record);

    List<TComment> selectByExample(TCommentExample example);

    int updateByExampleSelective(@Param("record") TComment record, @Param("example") TCommentExample example);

    int updateByExample(@Param("record") TComment record, @Param("example") TCommentExample example);
}