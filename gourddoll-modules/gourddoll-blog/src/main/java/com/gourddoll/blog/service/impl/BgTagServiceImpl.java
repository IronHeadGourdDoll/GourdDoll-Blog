package com.gourddoll.blog.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgTagMapper;
import com.gourddoll.blog.domain.BgTag;
import com.gourddoll.blog.service.IBgTagService;

/**
 * 标签管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgTagServiceImpl implements IBgTagService 
{
    @Autowired
    private BgTagMapper bgTagMapper;

    /**
     * 查询标签管理
     * 
     * @param id 标签管理ID
     * @return 标签管理
     */
    @Override
    public BgTag selectBgTagById(Long id)
    {
        return bgTagMapper.selectBgTagById(id);
    }

    /**
     * 查询标签管理列表
     * 
     * @param bgTag 标签管理
     * @return 标签管理
     */
    @Override
    public List<BgTag> selectBgTagList(BgTag bgTag)
    {
        return bgTagMapper.selectBgTagList(bgTag);
    }

    /**
     * 新增标签管理
     * 
     * @param bgTag 标签管理
     * @return 结果
     */
    @Override
    public int insertBgTag(BgTag bgTag)
    {
        return bgTagMapper.insertBgTag(bgTag);
    }

    /**
     * 修改标签管理
     * 
     * @param bgTag 标签管理
     * @return 结果
     */
    @Override
    public int updateBgTag(BgTag bgTag)
    {
        return bgTagMapper.updateBgTag(bgTag);
    }

    /**
     * 批量删除标签管理
     * 
     * @param ids 需要删除的标签管理ID
     * @return 结果
     */
    @Override
    public int deleteBgTagByIds(Long[] ids)
    {
        return bgTagMapper.deleteBgTagByIds(ids);
    }

    /**
     * 删除标签管理信息
     * 
     * @param id 标签管理ID
     * @return 结果
     */
    @Override
    public int deleteBgTagById(Long id)
    {
        return bgTagMapper.deleteBgTagById(id);
    }
}
