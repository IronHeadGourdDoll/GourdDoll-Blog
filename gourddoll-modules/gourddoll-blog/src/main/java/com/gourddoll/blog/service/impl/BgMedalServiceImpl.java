package com.gourddoll.blog.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgMedalMapper;
import com.gourddoll.blog.domain.BgMedal;
import com.gourddoll.blog.service.IBgMedalService;

/**
 * 勋章管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgMedalServiceImpl implements IBgMedalService 
{
    @Autowired
    private BgMedalMapper bgMedalMapper;

    /**
     * 查询勋章管理
     * 
     * @param id 勋章管理ID
     * @return 勋章管理
     */
    @Override
    public BgMedal selectBgMedalById(Long id)
    {
        return bgMedalMapper.selectBgMedalById(id);
    }

    /**
     * 查询勋章管理列表
     * 
     * @param bgMedal 勋章管理
     * @return 勋章管理
     */
    @Override
    public List<BgMedal> selectBgMedalList(BgMedal bgMedal)
    {
        return bgMedalMapper.selectBgMedalList(bgMedal);
    }

    /**
     * 新增勋章管理
     * 
     * @param bgMedal 勋章管理
     * @return 结果
     */
    @Override
    public int insertBgMedal(BgMedal bgMedal)
    {
        return bgMedalMapper.insertBgMedal(bgMedal);
    }

    /**
     * 修改勋章管理
     * 
     * @param bgMedal 勋章管理
     * @return 结果
     */
    @Override
    public int updateBgMedal(BgMedal bgMedal)
    {
        return bgMedalMapper.updateBgMedal(bgMedal);
    }

    /**
     * 批量删除勋章管理
     * 
     * @param ids 需要删除的勋章管理ID
     * @return 结果
     */
    @Override
    public int deleteBgMedalByIds(Long[] ids)
    {
        return bgMedalMapper.deleteBgMedalByIds(ids);
    }

    /**
     * 删除勋章管理信息
     * 
     * @param id 勋章管理ID
     * @return 结果
     */
    @Override
    public int deleteBgMedalById(Long id)
    {
        return bgMedalMapper.deleteBgMedalById(id);
    }
}
