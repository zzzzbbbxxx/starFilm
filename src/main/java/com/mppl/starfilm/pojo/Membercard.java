package com.mppl.starfilm.pojo;

import java.util.Date;

public class Membercard {
    private Integer id;

    private Integer userid;

    private Integer cinemaid;

    private Date createtime;

    private Float money;

    private Integer enable;

    private Integer credits;

    private Date limittime;

    
    @Override
    public String toString() {
        return "Membercard [id=" + id + ", userid=" + userid + ", money="
                + money + ", credits=" + credits + "]";
    }

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

    public Integer getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(Integer cinemaid) {
        this.cinemaid = cinemaid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public Integer getCredits() {
        return credits;
    }

    public void setCredits(Integer credits) {
        this.credits = credits;
    }

    public Date getLimittime() {
        return limittime;
    }

    public void setLimittime(Date limittime) {
        this.limittime = limittime;
    }
}