package com.gourddoll.blog.mapper;

import java.util.List;
import com.gourddoll.blog.domain.BgCategory;

/**
 * 分类管理Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgCategoryMapper 
{
    /**
     * 查询分类管理
     * 
     * @param id 分类管理ID
     * @return 分类管理
     */
    public BgCategory selectBgCategoryById(Long id);

    /**
     * 查询分类管理列表
     * 
     * @param bgCategory 分类管理
     * @return 分类管理集合
     */
    public List<BgCategory> selectBgCategoryList(BgCategory bgCategory);

    /**
     * 新增分类管理
     * 
     * @param bgCategory 分类管理
     * @return 结果
     */
    public int insertBgCategory(BgCategory bgCategory);

    /**
     * 修改分类管理
     * 
     * @param bgCategory 分类管理
     * @return 结果
     */
    public int updateBgCategory(BgCategory bgCategory);

    /**
     * 删除分类管理
     * 
     * @param id 分类管理ID
     * @return 结果
     */
    public int deleteBgCategoryById(Long id);

    /**
     * 批量删除分类管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteBgCategoryByIds(Long[] ids);
}
