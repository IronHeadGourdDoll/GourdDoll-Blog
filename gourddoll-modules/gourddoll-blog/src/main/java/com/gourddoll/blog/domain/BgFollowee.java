package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 关注管理对象 bg_followee
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgFollowee extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 被关注的人的id */
    private Long followeeId;

    /** 关注人的id */
    @Excel(name = "关注人的id")
    private Long fanId;

    public void setFolloweeId(Long followeeId) 
    {
        this.followeeId = followeeId;
    }

    public Long getFolloweeId() 
    {
        return followeeId;
    }
    public void setFanId(Long fanId) 
    {
        this.fanId = fanId;
    }

    public Long getFanId() 
    {
        return fanId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("followeeId", getFolloweeId())
            .append("fanId", getFanId())
            .toString();
    }
}
