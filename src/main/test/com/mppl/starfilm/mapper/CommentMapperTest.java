package com.mppl.starfilm.mapper;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;

import com.mppl.starfilm.pojo.CommentExample;
import com.mppl.starfilm.pojo.CommentExample.Criteria;

import javax.annotation.Resource;

@RunWith(org.springframework.test.context.junit4.SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:beans.xml")
public class CommentMapperTest {

    @Resource
    CommentMapper commentMapper;
    
    CommentExample example = new CommentExample();
    
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
        
    }

    @Before
    public void setUp() throws Exception {
    }

    @Test
    public void testCountByExample() {
       
        int count = commentMapper.countByExample(example);
        System.out.println("结果：" + count);
    }

    @Test
    public void testDeleteByExample() {
        ApplicationContext app = new ClassPathXmlApplicationContext("beans.xml");
        CommentMapper commentMapper = (CommentMapper)app.getBean("commentMapper");
        Criteria createCriteria = example.createCriteria();
        createCriteria.andStarEqualTo(5F);
        int count = commentMapper.deleteByExample(example);
        System.out.println("删除行:" + count);
        
    }

    @Test
    public void testInsert() {
        fail("Not yet implemented");
    }

    @Test
    public void testInsertSelective() {
        fail("Not yet implemented");
    }

    @Test
    public void testSelectByExample() {
        fail("Not yet implemented");
    }

    @Test
    public void testUpdateByExampleSelective() {
        fail("Not yet implemented");
    }

    @Test
    public void testUpdateByExample() {
        fail("Not yet implemented");
    }

}
