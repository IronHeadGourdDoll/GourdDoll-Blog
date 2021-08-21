package com.gourddoll.blog.domain.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.gourddoll.common.core.annotation.Excel;
import com.gourddoll.common.core.web.domain.BaseEntity;
import com.gourddoll.blog.domain.BgBlogComment;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.List;
import java.util.stream.Collectors;

/**
 * bo'ke评论对象 mcs_comment
 * 
 * @author gourddoll
 * @date 2021-04-06
 */
public class CommentTreeSelect extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /**
     * 博客id
     */
    @Excel(name = "博客id")
    private Long serviceId;

    /**
     * 博客标题
     */
    @Excel(name = "博客标题")
    private String blogTitle;

    /** 评论内容 */
    @Excel(name = "评论内容")
    private String content;

    /** 是谁评论的 */
    @Excel(name = "是谁评论的")
    private String commentator;

    /** 0直接评论service_id的，其他都是回复的评论 的id */
    @Excel(name = "0直接评论service_id的，其他都是回复的评论 的id")
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

    /** 评分 */
    @Excel(name = "评分")
    private Integer rate;

    /** 子节点 */
    @JsonInclude(JsonInclude.Include.NON_EMPTY)
    private List<CommentTreeSelect> children;

    public CommentTreeSelect()
    {

    }

    public CommentTreeSelect(BgBlogComment comment)
    {
        this.id = comment.getId();
        this.serviceId = comment.getBlogId();
        this.parent = comment.getParent();
        this.blogTitle = comment.getContent();
        this.content = comment.getContent();
        this.commentator = comment.getCommentator();
        this.layer = comment.getLayer();
        this.rate = comment.getRate();
        List<CommentTreeSelect> child = comment.getChildren().stream().map(CommentTreeSelect::new).collect(Collectors.toList());
        if(child.size() < 1){
            this.children = null;
        }else {
            this.children = child;
        }
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getServiceId() {
        return serviceId;
    }

    public void setServiceId(Long serviceId) {
        this.serviceId = serviceId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCommentator() {
        return commentator;
    }

    public void setCommentator(String commentator) {
        this.commentator = commentator;
    }

    public Long getParent() {
        return parent;
    }

    public void setParent(Long parent) {
        this.parent = parent;
    }

    public Long getLayer() {
        return layer;
    }

    public void setLayer(Long layer) {
        this.layer = layer;
    }

    public Long getLft() {
        return lft;
    }

    public void setLft(Long lft) {
        this.lft = lft;
    }

    public Long getRft() {
        return rft;
    }

    public void setRft(Long rft) {
        this.rft = rft;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public List<CommentTreeSelect> getChildren() {
        return children;
    }

    public void setChildren(List<CommentTreeSelect> children) {
        this.children = children;
    }
}
