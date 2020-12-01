package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 勋章管理对象 bg_medal
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgMedal extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 勋章名字 */
    @Excel(name = "勋章名字")
    private String medalName;

    /** 勋章图片 */
    @Excel(name = "勋章图片")
    private String img;

    /** 勋章描述 */
    @Excel(name = "勋章描述")
    private String description;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setMedalName(String medalName) 
    {
        this.medalName = medalName;
    }

    public String getMedalName() 
    {
        return medalName;
    }
    public void setImg(String img) 
    {
        this.img = img;
    }

    public String getImg() 
    {
        return img;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("medalName", getMedalName())
            .append("img", getImg())
            .append("description", getDescription())
            .toString();
    }
}
