package com.gourddoll.blog.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import com.gourddoll.blog.domain.vo.CommentTreeSelect;
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

    @Override
    public List<BgBlogComment> selectBlogCommentList(BgBlogComment bgBlogComment) {
        return bgBlogCommentMapper.selectBgBlogCommentList(bgBlogComment);
    }

    @Override
    public List<CommentTreeSelect> buildCommentTreeSelect(List<BgBlogComment> list) {
        List<BgBlogComment> commentTrees = buildCommentTree(list);
        return commentTrees.stream().map(CommentTreeSelect::new).collect(Collectors.toList());
    }

    /**
     * 构建前端所需要树结构
     *
     * @param comments 评论列表
     * @return 树结构列表
     */
    @Override
    public List<BgBlogComment> buildCommentTree(List<BgBlogComment> comments)
    {
        List<BgBlogComment> returnList = new ArrayList<BgBlogComment>();
        List<Long> tempList = new ArrayList<Long>();
        for (BgBlogComment c : comments)
        {
            tempList.add(c.getParent());
        }
        for (Iterator<BgBlogComment> iterator = comments.iterator(); iterator.hasNext();)
        {
            BgBlogComment comment = (BgBlogComment) iterator.next();
            // 如果是顶级节点, 遍历该父节点的所有子节点？？？？？？？？？
            if (comment.getParent() == 0)
            {
                recursionFn(comments, comment);
                returnList.add(comment);
            }
        }
        if (returnList.isEmpty())
        {
            returnList = comments;
        }
        return returnList;
    }

    /**
     * 递归列表
     *
     * @param list
     * @param t
     */
    private void recursionFn(List<BgBlogComment> list, BgBlogComment t)
    {
        // 得到子节点列表
        List<BgBlogComment> childList = getChildList(list, t);
        t.setChildren(childList);
        for (BgBlogComment tChild : childList)
        {
            if (hasChild(list, tChild))
            {
                recursionFn(list, tChild);
            }
        }
    }

    /**
     * 判断是否有子节点
     */
    private boolean hasChild(List<BgBlogComment> list, BgBlogComment t)
    {
        return getChildList(list, t).size() > 0 ? true : false;
    }

    /**
     * 得到子节点列表
     */
    private List<BgBlogComment> getChildList(List<BgBlogComment> list, BgBlogComment t)
    {
        List<BgBlogComment> tlist = new ArrayList<BgBlogComment>();
        Iterator<BgBlogComment> it = list.iterator();
        while (it.hasNext())
        {
            BgBlogComment n = (BgBlogComment) it.next();
            if (n.getParent().longValue() == t.getId().longValue())
            {
                tlist.add(n);
            }
        }
        return tlist;
    }
}
