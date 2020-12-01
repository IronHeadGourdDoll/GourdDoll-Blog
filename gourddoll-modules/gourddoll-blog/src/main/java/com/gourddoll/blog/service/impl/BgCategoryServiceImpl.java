package com.gourddoll.blog.service.impl;

import java.util.List;
import com.gourddoll.common.core.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgCategoryMapper;
import com.gourddoll.blog.domain.BgCategory;
import com.gourddoll.blog.service.IBgCategoryService;

/**
 * 分类管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgCategoryServiceImpl implements IBgCategoryService 
{
    @Autowired
    private BgCategoryMapper bgCategoryMapper;

    /**
     * 查询分类管理
     * 
     * @param id 分类管理ID
     * @return 分类管理
     */
    @Override
    public BgCategory selectBgCategoryById(Long id)
    {
        return bgCategoryMapper.selectBgCategoryById(id);
    }

    /**
     * 查询分类管理列表
     * 
     * @param bgCategory 分类管理
     * @return 分类管理
     */
    @Override
    public List<BgCategory> selectBgCategoryList(BgCategory bgCategory)
    {
        return bgCategoryMapper.selectBgCategoryList(bgCategory);
    }

    /**
     * 新增分类管理
     * 
     * @param bgCategory 分类管理
     * @return 结果
     */
    @Override
    public int insertBgCategory(BgCategory bgCategory)
    {
        bgCategory.setCreateTime(DateUtils.getNowDate());
        return bgCategoryMapper.insertBgCategory(bgCategory);
    }

    /**
     * 修改分类管理
     * 
     * @param bgCategory 分类管理
     * @return 结果
     */
    @Override
    public int updateBgCategory(BgCategory bgCategory)
    {
        bgCategory.setUpdateTime(DateUtils.getNowDate());
        return bgCategoryMapper.updateBgCategory(bgCategory);
    }

    /**
     * 批量删除分类管理
     * 
     * @param ids 需要删除的分类管理ID
     * @return 结果
     */
    @Override
    public int deleteBgCategoryByIds(Long[] ids)
    {
        return bgCategoryMapper.deleteBgCategoryByIds(ids);
    }

    /**
     * 删除分类管理信息
     * 
     * @param id 分类管理ID
     * @return 结果
     */
    @Override
    public int deleteBgCategoryById(Long id)
    {
        return bgCategoryMapper.deleteBgCategoryById(id);
    }
}
