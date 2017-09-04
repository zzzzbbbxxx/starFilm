package com.mppl.starfilm.pojo;

public class Comment {
    private Integer id;

    private Integer userid;

    private Integer movieid;

    private String content;

    private Float star;

    @Override
    public String toString() {
        return "Comment [id=" + id + ", content=" + content + ", star=" + star
                + "]";
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

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Float getStar() {
        return star;
    }

    public void setStar(Float star) {
        this.star = star;
    }
}