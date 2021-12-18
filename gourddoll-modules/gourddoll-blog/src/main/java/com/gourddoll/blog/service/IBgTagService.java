package com.gourddoll.blog.service;

import java.util.List;
import com.gourddoll.blog.domain.BgTag;

/**
 * 标签管理Service接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface IBgTagService 
{
    /**
     * 查询标签管理
     * 
     * @param id 标签管理ID
     * @return 标签管理
     */
    public BgTag selectBgTagById(Long id);

    /**
     * 查询标签管理列表
     * 
     * @param bgTag 标签管理
     * @return 标签管理集合
     */
    public List<BgTag> selectBgTagList(BgTag bgTag);

    /**
     * 新增标签管理
     * 
     * @param bgTag 标签管理
     * @return 结果
     */
    public int insertBgTag(BgTag bgTag);

    /**
     * 修改标签管理
     * 
     * @param bgTag 标签管理
     * @return 结果
     */
    public int updateBgTag(BgTag bgTag);

    /**
     * 批量删除标签管理
     * 
     * @param ids 需要删除的标签管理ID
     * @return 结果
     */
    public int deleteBgTagByIds(Long[] ids);

    /**
     * 删除标签管理信息
     * 
     * @param id 标签管理ID
     * @return 结果
     */
    public int deleteBgTagById(Long id);

    /**
     * 获得博客的标签信息
     *
     * @param blogId 博客ID
     * @return 结果
     */
    public List<Long> selectTagListByBlogId(Long blogId);
}
