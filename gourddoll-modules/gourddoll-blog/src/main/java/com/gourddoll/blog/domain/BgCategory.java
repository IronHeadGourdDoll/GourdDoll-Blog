package com.gourddoll.blog.domain;

import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 分类管理对象 bg_category
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public class BgCategory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 分类ID */
    private Long id;

    /** 分类名称 */
    @Excel(name = "分类名称")
    private String categoryName;

    /** 父分类ID */
    @Excel(name = "父分类ID")
    private Long parentId;

    /** 分类类型（0博客 1资源） */
    @Excel(name = "分类类型", readConverterExp = "0=博客,1=资源")
    private String categoryType;

    /** 分类状态（0正常 1停用） */
    @Excel(name = "分类状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 显示顺序 */
    @Excel(name = "显示顺序")
    private Integer orderNum;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCategoryName(String categoryName) 
    {
        this.categoryName = categoryName;
    }

    public String getCategoryName() 
    {
        return categoryName;
    }
    public void setParentId(Long parentId) 
    {
        this.parentId = parentId;
    }

    public Long getParentId() 
    {
        return parentId;
    }
    public void setCategoryType(String categoryType) 
    {
        this.categoryType = categoryType;
    }

    public String getCategoryType() 
    {
        return categoryType;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setOrderNum(Integer orderNum) 
    {
        this.orderNum = orderNum;
    }

    public Integer getOrderNum() 
    {
        return orderNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("categoryName", getCategoryName())
            .append("parentId", getParentId())
            .append("categoryType", getCategoryType())
            .append("status", getStatus())
            .append("orderNum", getOrderNum())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
