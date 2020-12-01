package com.gourddoll.blog.service;

import java.util.List;
import com.gourddoll.blog.domain.BgMedal;

/**
 * 勋章管理Service接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface IBgMedalService 
{
    /**
     * 查询勋章管理
     * 
     * @param id 勋章管理ID
     * @return 勋章管理
     */
    public BgMedal selectBgMedalById(Long id);

    /**
     * 查询勋章管理列表
     * 
     * @param bgMedal 勋章管理
     * @return 勋章管理集合
     */
    public List<BgMedal> selectBgMedalList(BgMedal bgMedal);

    /**
     * 新增勋章管理
     * 
     * @param bgMedal 勋章管理
     * @return 结果
     */
    public int insertBgMedal(BgMedal bgMedal);

    /**
     * 修改勋章管理
     * 
     * @param bgMedal 勋章管理
     * @return 结果
     */
    public int updateBgMedal(BgMedal bgMedal);

    /**
     * 批量删除勋章管理
     * 
     * @param ids 需要删除的勋章管理ID
     * @return 结果
     */
    public int deleteBgMedalByIds(Long[] ids);

    /**
     * 删除勋章管理信息
     * 
     * @param id 勋章管理ID
     * @return 结果
     */
    public int deleteBgMedalById(Long id);
}
