package com.gourddoll.blog.mapper;

import java.util.List;
import com.gourddoll.blog.domain.BgBlogComment;

/**
 * 评论管理Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgBlogCommentMapper 
{
    /**
     * 查询评论管理
     * 
     * @param id 评论管理ID
     * @return 评论管理
     */
    public BgBlogComment selectBgBlogCommentById(Long id);

    /**
     * 查询评论管理列表
     * 
     * @param bgBlogComment 评论管理
     * @return 评论管理集合
     */
    public List<BgBlogComment> selectBgBlogCommentList(BgBlogComment bgBlogComment);

    /**
     * 新增评论管理
     * 
     * @param bgBlogComment 评论管理
     * @return 结果
     */
    public int insertBgBlogComment(BgBlogComment bgBlogComment);

    /**
     * 修改评论管理
     * 
     * @param bgBlogComment 评论管理
     * @return 结果
     */
    public int updateBgBlogComment(BgBlogComment bgBlogComment);

    /**
     * 删除评论管理
     * 
     * @param id 评论管理ID
     * @return 结果
     */
    public int deleteBgBlogCommentById(Long id);

    /**
     * 批量删除评论管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBgBlogCommentByIds(Long[] ids);
}
