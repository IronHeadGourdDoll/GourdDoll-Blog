package com.gourddoll.blog.service;

import java.util.List;
import com.gourddoll.blog.domain.BgBlog;

/**
 * 博客管理Service接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface IBgBlogService 
{
    /**
     * 查询博客管理
     * 
     * @param id 博客管理ID
     * @return 博客管理
     */
    public BgBlog selectBgBlogById(Long id);

    /**
     * 查询博客管理列表
     * 
     * @param bgBlog 博客管理
     * @return 博客管理集合
     */
    public List<BgBlog> selectBgBlogList(BgBlog bgBlog);

    /**
     * 新增博客管理
     * 
     * @param bgBlog 博客管理
     * @return 结果
     */
    public int insertBgBlog(BgBlog bgBlog);

    /**
     * 修改博客管理
     * 
     * @param bgBlog 博客管理
     * @return 结果
     */
    public int updateBgBlog(BgBlog bgBlog);

    /**
     * 批量删除博客管理
     * 
     * @param ids 需要删除的博客管理ID
     * @return 结果
     */
    public int deleteBgBlogByIds(Long[] ids);

    /**
     * 删除博客管理信息
     * 
     * @param id 博客管理ID
     * @return 结果
     */
    public int deleteBgBlogById(Long id);
}
