package com.gourddoll.blog.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgLinkMapper;
import com.gourddoll.blog.domain.BgLink;
import com.gourddoll.blog.service.IBgLinkService;

/**
 * 友链管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgLinkServiceImpl implements IBgLinkService 
{
    @Autowired
    private BgLinkMapper bgLinkMapper;

    /**
     * 查询友链管理
     * 
     * @param id 友链管理ID
     * @return 友链管理
     */
    @Override
    public BgLink selectBgLinkById(Long id)
    {
        return bgLinkMapper.selectBgLinkById(id);
    }

    /**
     * 查询友链管理列表
     * 
     * @param bgLink 友链管理
     * @return 友链管理
     */
    @Override
    public List<BgLink> selectBgLinkList(BgLink bgLink)
    {
        return bgLinkMapper.selectBgLinkList(bgLink);
    }

    /**
     * 新增友链管理
     * 
     * @param bgLink 友链管理
     * @return 结果
     */
    @Override
    public int insertBgLink(BgLink bgLink)
    {
        return bgLinkMapper.insertBgLink(bgLink);
    }

    /**
     * 修改友链管理
     * 
     * @param bgLink 友链管理
     * @return 结果
     */
    @Override
    public int updateBgLink(BgLink bgLink)
    {
        return bgLinkMapper.updateBgLink(bgLink);
    }

    /**
     * 批量删除友链管理
     * 
     * @param ids 需要删除的友链管理ID
     * @return 结果
     */
    @Override
    public int deleteBgLinkByIds(Long[] ids)
    {
        return bgLinkMapper.deleteBgLinkByIds(ids);
    }

    /**
     * 删除友链管理信息
     * 
     * @param id 友链管理ID
     * @return 结果
     */
    @Override
    public int deleteBgLinkById(Long id)
    {
        return bgLinkMapper.deleteBgLinkById(id);
    }
}
