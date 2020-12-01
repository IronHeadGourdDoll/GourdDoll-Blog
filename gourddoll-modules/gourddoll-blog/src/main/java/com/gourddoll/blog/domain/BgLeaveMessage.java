package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 留言管理对象 bg_leave_message
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgLeaveMessage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 被留言人 */
    @Excel(name = "被留言人")
    private String userName;

    /** 留言者 */
    @Excel(name = "留言者")
    private String messagePeople;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 0代表留的言，1代表留言的回复，按时间降序 */
    @Excel(name = "0代表留的言，1代表留言的回复，按时间降序")
    private Long parent;

    /** 留言层级 */
    @Excel(name = "留言层级")
    private Long layer;

    /** 左编码 */
    @Excel(name = "左编码")
    private Long lft;

    /** 右编码 */
    @Excel(name = "右编码")
    private Long rft;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }

    public String getUserName() 
    {
        return userName;
    }
    public void setMessagePeople(String messagePeople) 
    {
        this.messagePeople = messagePeople;
    }

    public String getMessagePeople() 
    {
        return messagePeople;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
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
            .append("userName", getUserName())
            .append("messagePeople", getMessagePeople())
            .append("content", getContent())
            .append("createTime", getCreateTime())
            .append("parent", getParent())
            .append("layer", getLayer())
            .append("lft", getLft())
            .append("rft", getRft())
            .toString();
    }
}
