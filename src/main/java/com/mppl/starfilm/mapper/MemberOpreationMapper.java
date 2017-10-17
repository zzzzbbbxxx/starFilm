package com.mppl.starfilm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mppl.starfilm.pojo.MemberOpreation;

public interface MemberOpreationMapper {
    
    @Insert("INSERT INTO member_operation (name, url) VALUES ( #{name}, #{url});")
    public int createMemberOpreation(MemberOpreation memberOpreation);
    
    @Update("UPDATE member_operation SET deleted = 1 WHERE id = #{id} ")
    public int deleteMemberOpreationById(Integer id);
    
    @Update("UPDATE member_operation SET name = #{name}, url = #{url} WHERE id = #{id}")
    public int updateMemberOpreation(MemberOpreation memberOpreation);
    
    @Select("SELECT * FROM member_operation WHERE id = #{id}")
    public MemberOpreation queryMemberOpreation(Integer id);
    
    @Select("SELECT * FROM member_operation")
    public List<MemberOpreation> getAllMemberOpreation(); 
}
