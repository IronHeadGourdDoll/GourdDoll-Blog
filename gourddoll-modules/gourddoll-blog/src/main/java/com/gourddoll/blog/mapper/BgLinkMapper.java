package com.gourddoll.blog.mapper;

import java.util.List;
import com.gourddoll.blog.domain.BgLink;

/**
 * 友链管理Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgLinkMapper 
{
    /**
     * 查询友链管理
     * 
     * @param id 友链管理ID
     * @return 友链管理
     */
    public BgLink selectBgLinkById(Long id);

    /**
     * 查询友链管理列表
     * 
     * @param bgLink 友链管理
     * @return 友链管理集合
     */
    public List<BgLink> selectBgLinkList(BgLink bgLink);

    /**
     * 新增友链管理
     * 
     * @param bgLink 友链管理
     * @return 结果
     */
    public int insertBgLink(BgLink bgLink);

    /**
     * 修改友链管理
     * 
     * @param bgLink 友链管理
     * @return 结果
     */
    public int updateBgLink(BgLink bgLink);

    /**
     * 删除友链管理
     * 
     * @param id 友链管理ID
     * @return 结果
     */
    public int deleteBgLinkById(Long id);

    /**
     * 批量删除友链管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBgLinkByIds(Long[] ids);
}
