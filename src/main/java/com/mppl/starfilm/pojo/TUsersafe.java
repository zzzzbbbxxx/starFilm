package com.mppl.starfilm.pojo;

import java.util.Date;

public class TUsersafe {
    private Integer id;

    private Integer userid;

    private String email;

    private Date posttime;

    private String catpcha;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getPosttime() {
        return posttime;
    }

    public void setPosttime(Date posttime) {
        this.posttime = posttime;
    }

    public String getCatpcha() {
        return catpcha;
    }

    public void setCatpcha(String catpcha) {
        this.catpcha = catpcha == null ? null : catpcha.trim();
    }
}