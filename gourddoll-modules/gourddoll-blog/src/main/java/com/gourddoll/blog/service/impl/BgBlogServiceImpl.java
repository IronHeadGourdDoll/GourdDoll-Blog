package com.gourddoll.blog.service.impl;

import com.gourddoll.blog.domain.BgBlog;
import com.gourddoll.blog.domain.BgBlogTag;
import com.gourddoll.blog.mapper.BgBlogMapper;
import com.gourddoll.blog.mapper.BgBlogTagMapper;
import com.gourddoll.blog.service.IBgBlogService;
import com.gourddoll.common.core.utils.DateUtils;
import com.gourddoll.common.core.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 博客管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgBlogServiceImpl implements IBgBlogService 
{
    @Autowired
    private BgBlogMapper bgBlogMapper;

    @Autowired
    private BgBlogTagMapper bgBlogTagMapper;

    /**
     * 查询博客管理
     * 
     * @param id 博客管理ID
     * @return 博客管理
     */
    @Override
    public BgBlog selectBgBlogById(Long id)
    {
        return bgBlogMapper.selectBgBlogById(id);
    }

    /**
     * 查询博客管理列表
     * 
     * @param bgBlog 博客管理
     * @return 博客管理
     */
    @Override
    public List<BgBlog> selectBgBlogList(BgBlog bgBlog)
    {
        return bgBlogMapper.selectBgBlogList(bgBlog);
    }

    /**
     * 新增博客管理
     * 
     * @param bgBlog 博客管理
     * @return 结果
     */
    @Override
    public int insertBgBlog(BgBlog bgBlog)
    {
        bgBlog.setCreateTime(DateUtils.getNowDate());
        int rows = bgBlogMapper.insertBgBlog(bgBlog);
        // 新增博客标签关联
        insertBlogTag(bgBlog);
        return rows;
    }

    /**
     * 修改博客管理
     * 
     * @param bgBlog 博客管理
     * @return 结果
     */
    @Override
    public int updateBgBlog(BgBlog bgBlog)
    {
        bgBlog.setUpdateTime(DateUtils.getNowDate());
        // 删除博客标签关联
        bgBlogTagMapper.deleteBlogTagByBlogId(bgBlog.getId());
        // 新增博客标签关联
        insertBlogTag(bgBlog);
        return bgBlogMapper.updateBgBlog(bgBlog);
    }

    /**
     * 批量删除博客管理
     * 
     * @param ids 需要删除的博客管理ID
     * @return 结果
     */
    @Override
    public int deleteBgBlogByIds(Long[] ids)
    {
        return bgBlogMapper.deleteBgBlogByIds(ids);
    }

    /**
     * 删除博客管理信息
     * 
     * @param id 博客管理ID
     * @return 结果
     */
    @Override
    public int deleteBgBlogById(Long id)
    {
        return bgBlogMapper.deleteBgBlogById(id);
    }

    /**
     * 新增博客标签信息
     *
     * @param blog 对象
     */
    public void insertBlogTag(BgBlog blog){
        Long[] tags = blog.getTagIds();
        if (StringUtils.isNotNull(tags))
        {
            // 新增用户与角色管理
            List<BgBlogTag> list = new ArrayList<BgBlogTag>();
            for (Long tagId : tags)
            {
                BgBlogTag bt = new BgBlogTag();
                bt.setBlogId(blog.getId());
                bt.setTagId(tagId);
                list.add(bt);
            }
            if (list.size() > 0)
            {
                bgBlogTagMapper.batchBlogTag(list);
            }
        }
    }
}
