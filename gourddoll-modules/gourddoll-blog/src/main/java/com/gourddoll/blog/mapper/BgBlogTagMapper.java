package com.gourddoll.blog.mapper;

import com.gourddoll.blog.domain.BgBlogTag;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 博客与标签关联表 数据层
 * 
 * @author gourddoll
 */
public interface BgBlogTagMapper
{
    /**
     * 通过博客ID删除博客和标签关联
     * 
     * @param blogId 博客ID
     * @return 结果
     */
    public int deleteBlogTagByBlogId(Long blogId);

    /**
     * 批量删除博客和标签关联
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBlogTag(Long[] ids);

    /**
     * 通过标签ID查询标签使用数量
     * 
     * @param tagId 标签ID
     * @return 结果
     */
    public int countBlogTagByTagId(Long tagId);

    /**
     * 批量新增博客标签信息
     * 
     * @param blogTagList 用户角色列表
     * @return 结果
     */
    public int batchBlogTag(List<BgBlogTag> blogTagList);

    /**
     * 删除用户和角色关联信息
     * 
     * @param blogTag 博客和标签关联信息
     * @return 结果
     */
    public int deleteBlogTagInfo(BgBlogTag blogTag);

    /**
     * 批量取消博客的标签
     * 
     * @param tagId 标签ID
     * @param blogIds 需要删除的博客数据ID
     * @return 结果
     */
    public int deleteBlogTagInfos(@Param("tagId") Long tagId, @Param("blogIds") Long[] blogIds);
}
