package com.gourddoll.blog.mapper;

import java.util.List;
import com.gourddoll.blog.domain.BgLike;

/**
 * 点赞管理Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgLikeMapper 
{
    /**
     * 查询点赞管理
     * 
     * @param id 点赞管理ID
     * @return 点赞管理
     */
    public BgLike selectBgLikeById(Long id);

    /**
     * 查询点赞管理列表
     * 
     * @param bgLike 点赞管理
     * @return 点赞管理集合
     */
    public List<BgLike> selectBgLikeList(BgLike bgLike);

    /**
     * 新增点赞管理
     * 
     * @param bgLike 点赞管理
     * @return 结果
     */
    public int insertBgLike(BgLike bgLike);

    /**
     * 修改点赞管理
     * 
     * @param bgLike 点赞管理
     * @return 结果
     */
    public int updateBgLike(BgLike bgLike);

    /**
     * 删除点赞管理
     * 
     * @param id 点赞管理ID
     * @return 结果
     */
    public int deleteBgLikeById(Long id);

    /**
     * 批量删除点赞管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBgLikeByIds(Long[] ids);
}
