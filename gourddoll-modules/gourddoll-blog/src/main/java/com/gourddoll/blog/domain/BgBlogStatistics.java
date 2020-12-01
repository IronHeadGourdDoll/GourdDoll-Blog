package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 博客统计对象 bg_blog_statistics
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgBlogStatistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long blogId;

    /** 阅读次数 */
    @Excel(name = "阅读次数")
    private Long readTimes;

    /** 点赞次数 */
    @Excel(name = "点赞次数")
    private Long likeTimes;

    /** 不喜欢次数 */
    @Excel(name = "不喜欢次数")
    private Long dislikeTimes;

    /** 评论次数 */
    @Excel(name = "评论次数")
    private Long commentTimes;

    public void setBlogId(Long blogId) 
    {
        this.blogId = blogId;
    }

    public Long getBlogId() 
    {
        return blogId;
    }
    public void setReadTimes(Long readTimes) 
    {
        this.readTimes = readTimes;
    }

    public Long getReadTimes() 
    {
        return readTimes;
    }
    public void setLikeTimes(Long likeTimes) 
    {
        this.likeTimes = likeTimes;
    }

    public Long getLikeTimes() 
    {
        return likeTimes;
    }
    public void setDislikeTimes(Long dislikeTimes) 
    {
        this.dislikeTimes = dislikeTimes;
    }

    public Long getDislikeTimes() 
    {
        return dislikeTimes;
    }
    public void setCommentTimes(Long commentTimes) 
    {
        this.commentTimes = commentTimes;
    }

    public Long getCommentTimes() 
    {
        return commentTimes;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("blogId", getBlogId())
            .append("readTimes", getReadTimes())
            .append("likeTimes", getLikeTimes())
            .append("dislikeTimes", getDislikeTimes())
            .append("commentTimes", getCommentTimes())
            .toString();
    }
}
