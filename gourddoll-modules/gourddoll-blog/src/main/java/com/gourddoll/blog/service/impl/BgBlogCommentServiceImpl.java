package com.gourddoll.blog.service.impl;

import java.util.List;
import com.gourddoll.common.core.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgBlogCommentMapper;
import com.gourddoll.blog.domain.BgBlogComment;
import com.gourddoll.blog.service.IBgBlogCommentService;

/**
 * 评论管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgBlogCommentServiceImpl implements IBgBlogCommentService 
{
    @Autowired
    private BgBlogCommentMapper bgBlogCommentMapper;

    /**
     * 查询评论管理
     * 
     * @param id 评论管理ID
     * @return 评论管理
     */
    @Override
    public BgBlogComment selectBgBlogCommentById(Long id)
    {
        return bgBlogCommentMapper.selectBgBlogCommentById(id);
    }

    /**
     * 查询评论管理列表
     * 
     * @param bgBlogComment 评论管理
     * @return 评论管理
     */
    @Override
    public List<BgBlogComment> selectBgBlogCommentList(BgBlogComment bgBlogComment)
    {
        return bgBlogCommentMapper.selectBgBlogCommentList(bgBlogComment);
    }

    /**
     * 新增评论管理
     * 
     * @param bgBlogComment 评论管理
     * @return 结果
     */
    @Override
    public int insertBgBlogComment(BgBlogComment bgBlogComment)
    {
        bgBlogComment.setCreateTime(DateUtils.getNowDate());
        return bgBlogCommentMapper.insertBgBlogComment(bgBlogComment);
    }

    /**
     * 修改评论管理
     * 
     * @param bgBlogComment 评论管理
     * @return 结果
     */
    @Override
    public int updateBgBlogComment(BgBlogComment bgBlogComment)
    {
        return bgBlogCommentMapper.updateBgBlogComment(bgBlogComment);
    }

    /**
     * 批量删除评论管理
     * 
     * @param ids 需要删除的评论管理ID
     * @return 结果
     */
    @Override
    public int deleteBgBlogCommentByIds(Long[] ids)
    {
        return bgBlogCommentMapper.deleteBgBlogCommentByIds(ids);
    }

    /**
     * 删除评论管理信息
     * 
     * @param id 评论管理ID
     * @return 结果
     */
    @Override
    public int deleteBgBlogCommentById(Long id)
    {
        return bgBlogCommentMapper.deleteBgBlogCommentById(id);
    }
}
