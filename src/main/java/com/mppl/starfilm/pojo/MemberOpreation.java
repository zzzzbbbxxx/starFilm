package com.mppl.starfilm.pojo;
/**
 * 会员操作实体类
 * @author lenovo
 *
 */
public class MemberOpreation {
    private Integer id;
    
    private String name;
    
    private String url;

    private Integer deleted;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        return "MemberOpreation [id=" + id + ", name=" + name + ", url=" + url
                + ", deleted=" + deleted + "]";
    }
    
}
