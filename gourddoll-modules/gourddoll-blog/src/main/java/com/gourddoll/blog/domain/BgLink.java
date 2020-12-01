package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 友链管理对象 bg_link
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgLink extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 友链用户名 */
    @Excel(name = "友链用户名")
    private String userName;

    /** 被友链用户名 */
    @Excel(name = "被友链用户名")
    private String linkedUsername;

    /** 被友链地址 */
    @Excel(name = "被友链地址")
    private String url;

    /** 简述 */
    @Excel(name = "简述")
    private String summary;

    /** 被友链头像 */
    @Excel(name = "被友链头像")
    private String img;

    /** 1表示审核通过,0表示未审核 */
    @Excel(name = "1表示审核通过,0表示未审核")
    private Long status;

    /** 权重 */
    @Excel(name = "权重")
    private Long weight;

    /** 是否显示 */
    @Excel(name = "是否显示")
    private Long display;

    /** 邮箱 */
    @Excel(name = "邮箱")
    private String email;

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
    public void setLinkedUsername(String linkedUsername) 
    {
        this.linkedUsername = linkedUsername;
    }

    public String getLinkedUsername() 
    {
        return linkedUsername;
    }
    public void setUrl(String url) 
    {
        this.url = url;
    }

    public String getUrl() 
    {
        return url;
    }
    public void setSummary(String summary) 
    {
        this.summary = summary;
    }

    public String getSummary() 
    {
        return summary;
    }
    public void setImg(String img) 
    {
        this.img = img;
    }

    public String getImg() 
    {
        return img;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }
    public void setWeight(Long weight) 
    {
        this.weight = weight;
    }

    public Long getWeight() 
    {
        return weight;
    }
    public void setDisplay(Long display) 
    {
        this.display = display;
    }

    public Long getDisplay() 
    {
        return display;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userName", getUserName())
            .append("linkedUsername", getLinkedUsername())
            .append("url", getUrl())
            .append("summary", getSummary())
            .append("img", getImg())
            .append("status", getStatus())
            .append("weight", getWeight())
            .append("display", getDisplay())
            .append("email", getEmail())
            .toString();
    }
}
