package com.gourddoll.blog.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgBlogStatisticsMapper;
import com.gourddoll.blog.domain.BgBlogStatistics;
import com.gourddoll.blog.service.IBgBlogStatisticsService;

/**
 * 博客统计Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgBlogStatisticsServiceImpl implements IBgBlogStatisticsService 
{
    @Autowired
    private BgBlogStatisticsMapper bgBlogStatisticsMapper;

    /**
     * 查询博客统计
     * 
     * @param blogId 博客统计ID
     * @return 博客统计
     */
    @Override
    public BgBlogStatistics selectBgBlogStatisticsById(Long blogId)
    {
        return bgBlogStatisticsMapper.selectBgBlogStatisticsById(blogId);
    }

    /**
     * 查询博客统计列表
     * 
     * @param bgBlogStatistics 博客统计
     * @return 博客统计
     */
    @Override
    public List<BgBlogStatistics> selectBgBlogStatisticsList(BgBlogStatistics bgBlogStatistics)
    {
        return bgBlogStatisticsMapper.selectBgBlogStatisticsList(bgBlogStatistics);
    }

    /**
     * 新增博客统计
     * 
     * @param bgBlogStatistics 博客统计
     * @return 结果
     */
    @Override
    public int insertBgBlogStatistics(BgBlogStatistics bgBlogStatistics)
    {
        return bgBlogStatisticsMapper.insertBgBlogStatistics(bgBlogStatistics);
    }

    /**
     * 修改博客统计
     * 
     * @param bgBlogStatistics 博客统计
     * @return 结果
     */
    @Override
    public int updateBgBlogStatistics(BgBlogStatistics bgBlogStatistics)
    {
        return bgBlogStatisticsMapper.updateBgBlogStatistics(bgBlogStatistics);
    }

    /**
     * 批量删除博客统计
     * 
     * @param blogIds 需要删除的博客统计ID
     * @return 结果
     */
    @Override
    public int deleteBgBlogStatisticsByIds(Long[] blogIds)
    {
        return bgBlogStatisticsMapper.deleteBgBlogStatisticsByIds(blogIds);
    }

    /**
     * 删除博客统计信息
     * 
     * @param blogId 博客统计ID
     * @return 结果
     */
    @Override
    public int deleteBgBlogStatisticsById(Long blogId)
    {
        return bgBlogStatisticsMapper.deleteBgBlogStatisticsById(blogId);
    }
}
