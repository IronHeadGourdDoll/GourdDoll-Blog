package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 评论管理对象 bg_blog_comment
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgBlogComment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 评论的博客 */
    @Excel(name = "评论的博客")
    private Long blogId;

    /** 评论内容 */
    @Excel(name = "评论内容")
    private String content;

    /** 是谁评论的 */
    @Excel(name = "是谁评论的")
    private String commentator;

    /** 0直接评论blog_id的，其他都是回复的评论 的id */
    @Excel(name = "0直接评论blog_id的，其他都是回复的评论 的id")
    private Long parent;

    /** 评论层级 */
    @Excel(name = "评论层级")
    private Long layer;

    /** 左编码值 */
    @Excel(name = "左编码值")
    private Long lft;

    /** 右编码值 */
    @Excel(name = "右编码值")
    private Long rft;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setBlogId(Long blogId) 
    {
        this.blogId = blogId;
    }

    public Long getBlogId() 
    {
        return blogId;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setCommentator(String commentator) 
    {
        this.commentator = commentator;
    }

    public String getCommentator() 
    {
        return commentator;
    }
    public void setParent(Long parent) 
    {
        this.parent = parent;
    }

    public Long getParent() 
    {
        return parent;
    }
    public void setLayer(Long layer) 
    {
        this.layer = layer;
    }

    public Long getLayer() 
    {
        return layer;
    }
    public void setLft(Long lft) 
    {
        this.lft = lft;
    }

    public Long getLft() 
    {
        return lft;
    }
    public void setRft(Long rft) 
    {
        this.rft = rft;
    }

    public Long getRft() 
    {
        return rft;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("blogId", getBlogId())
            .append("content", getContent())
            .append("createTime", getCreateTime())
            .append("commentator", getCommentator())
            .append("parent", getParent())
            .append("layer", getLayer())
            .append("lft", getLft())
            .append("rft", getRft())
            .toString();
    }
}
