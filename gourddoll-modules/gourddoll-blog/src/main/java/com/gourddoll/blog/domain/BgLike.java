package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 点赞管理对象 bg_like
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgLike extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 业务类型，1博客，2评论，3留言 */
    @Excel(name = "业务类型，1博客，2评论，3留言")
    private Long bizType;

    /** 业务id */
    @Excel(name = "业务id")
    private Long bizId;

    /** 对评论 点赞或点踩 的人 */
    @Excel(name = "对评论 点赞或点踩 的人")
    private String userName;

    /** 0代表踩，1代表赞 */
    @Excel(name = "0代表踩，1代表赞")
    private Integer status;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setBizType(Long bizType) 
    {
        this.bizType = bizType;
    }

    public Long getBizType() 
    {
        return bizType;
    }
    public void setBizId(Long bizId) 
    {
        this.bizId = bizId;
    }

    public Long getBizId() 
    {
        return bizId;
    }
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }

    public String getUserName() 
    {
        return userName;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("bizType", getBizType())
            .append("bizId", getBizId())
            .append("userName", getUserName())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
