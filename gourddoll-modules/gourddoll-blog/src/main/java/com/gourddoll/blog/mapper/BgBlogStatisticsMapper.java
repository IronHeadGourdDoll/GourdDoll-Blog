package com.gourddoll.blog.mapper;

import java.util.List;
import com.gourddoll.blog.domain.BgBlogStatistics;

/**
 * 博客统计Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgBlogStatisticsMapper 
{
    /**
     * 查询博客统计
     * 
     * @param blogId 博客统计ID
     * @return 博客统计
     */
    public BgBlogStatistics selectBgBlogStatisticsById(Long blogId);

    /**
     * 查询博客统计列表
     * 
     * @param bgBlogStatistics 博客统计
     * @return 博客统计集合
     */
    public List<BgBlogStatistics> selectBgBlogStatisticsList(BgBlogStatistics bgBlogStatistics);

    /**
     * 新增博客统计
     * 
     * @param bgBlogStatistics 博客统计
     * @return 结果
     */
    public int insertBgBlogStatistics(BgBlogStatistics bgBlogStatistics);

    /**
     * 修改博客统计
     * 
     * @param bgBlogStatistics 博客统计
     * @return 结果
     */
    public int updateBgBlogStatistics(BgBlogStatistics bgBlogStatistics);

    /**
     * 删除博客统计
     * 
     * @param blogId 博客统计ID
     * @return 结果
     */
    public int deleteBgBlogStatisticsById(Long blogId);

    /**
     * 批量删除博客统计
     * 
     * @param blogIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteBgBlogStatisticsByIds(Long[] blogIds);
}
