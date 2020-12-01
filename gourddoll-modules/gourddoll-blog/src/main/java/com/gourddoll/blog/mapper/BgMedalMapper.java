package com.gourddoll.blog.mapper;

import java.util.List;
import com.gourddoll.blog.domain.BgMedal;

/**
 * 勋章管理Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgMedalMapper 
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
     * 删除勋章管理
     * 
     * @param id 勋章管理ID
     * @return 结果
     */
    public int deleteBgMedalById(Long id);

    /**
     * 批量删除勋章管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBgMedalByIds(Long[] ids);
}
