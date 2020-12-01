package com.gourddoll.blog.service.impl;

import java.util.List;
import com.gourddoll.common.core.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgLikeMapper;
import com.gourddoll.blog.domain.BgLike;
import com.gourddoll.blog.service.IBgLikeService;

/**
 * 点赞管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgLikeServiceImpl implements IBgLikeService 
{
    @Autowired
    private BgLikeMapper bgLikeMapper;

    /**
     * 查询点赞管理
     * 
     * @param id 点赞管理ID
     * @return 点赞管理
     */
    @Override
    public BgLike selectBgLikeById(Long id)
    {
        return bgLikeMapper.selectBgLikeById(id);
    }

    /**
     * 查询点赞管理列表
     * 
     * @param bgLike 点赞管理
     * @return 点赞管理
     */
    @Override
    public List<BgLike> selectBgLikeList(BgLike bgLike)
    {
        return bgLikeMapper.selectBgLikeList(bgLike);
    }

    /**
     * 新增点赞管理
     * 
     * @param bgLike 点赞管理
     * @return 结果
     */
    @Override
    public int insertBgLike(BgLike bgLike)
    {
        bgLike.setCreateTime(DateUtils.getNowDate());
        return bgLikeMapper.insertBgLike(bgLike);
    }

    /**
     * 修改点赞管理
     * 
     * @param bgLike 点赞管理
     * @return 结果
     */
    @Override
    public int updateBgLike(BgLike bgLike)
    {
        bgLike.setUpdateTime(DateUtils.getNowDate());
        return bgLikeMapper.updateBgLike(bgLike);
    }

    /**
     * 批量删除点赞管理
     * 
     * @param ids 需要删除的点赞管理ID
     * @return 结果
     */
    @Override
    public int deleteBgLikeByIds(Long[] ids)
    {
        return bgLikeMapper.deleteBgLikeByIds(ids);
    }

    /**
     * 删除点赞管理信息
     * 
     * @param id 点赞管理ID
     * @return 结果
     */
    @Override
    public int deleteBgLikeById(Long id)
    {
        return bgLikeMapper.deleteBgLikeById(id);
    }
}
