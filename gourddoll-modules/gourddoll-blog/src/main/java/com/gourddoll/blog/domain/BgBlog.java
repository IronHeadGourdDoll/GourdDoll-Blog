package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.List;

/**
 * 博客管理对象 bg_blog
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgBlog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 博客id */
    private Long id;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 作者 */
    @Excel(name = "作者")
    private String author;

    /** 简介 */
    @Excel(name = "简介")
    private String summary;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 是否推荐，0不推荐，1推荐 */
    @Excel(name = "是否推荐，0不推荐，1推荐")
    private Integer commend;

    /** 文章状态，1表示已经发表，0表示在草稿箱，2表示在垃圾箱 */
    @Excel(name = "文章状态，1表示已经发表，0表示在草稿箱，2表示在垃圾箱")
    private Integer status;

    /** 博客预览图 */
    @Excel(name = "博客预览图")
    private String headerImg;

    /** 分类id */
    @Excel(name = "分类id")
    private String categoryId;

    /** 分类名 */
    @Excel(name = "分类名")
    private String categoryName;

    public Long[] tagIds;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setAuthor(String author) 
    {
        this.author = author;
    }

    public String getAuthor() 
    {
        return author;
    }
    public void setSummary(String summary) 
    {
        this.summary = summary;
    }

    public String getSummary() 
    {
        return summary;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setCommend(Integer commend) 
    {
        this.commend = commend;
    }

    public Integer getCommend() 
    {
        return commend;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }
    public void setHeaderImg(String headerImg) 
    {
        this.headerImg = headerImg;
    }

    public String getHeaderImg() 
    {
        return headerImg;
    }
    public void setCategoryId(String categoryId) 
    {
        this.categoryId = categoryId;
    }

    public String getCategoryId() 
    {
        return categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Long[] getTagIds() {
        return tagIds;
    }

    public void setTagIds(Long[] tagIds) {
        this.tagIds = tagIds;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("author", getAuthor())
            .append("summary", getSummary())
            .append("content", getContent())
            .append("commend", getCommend())
            .append("status", getStatus())
            .append("headerImg", getHeaderImg())
            .append("categoryId", getCategoryId())
            .append("categoryName", getCategoryName())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}
