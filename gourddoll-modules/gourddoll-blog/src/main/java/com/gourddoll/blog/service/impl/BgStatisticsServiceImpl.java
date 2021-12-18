package com.gourddoll.blog.service.impl;

import com.gourddoll.blog.domain.BgTag;
import com.gourddoll.blog.mapper.BgStatisticsMapper;
import com.gourddoll.blog.mapper.BgTagMapper;
import com.gourddoll.blog.service.IBgStatisticsService;
import com.gourddoll.blog.service.IBgTagService;
import com.gourddoll.common.core.utils.ServletUtils;
import com.gourddoll.common.security.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 统计分析Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgStatisticsServiceImpl implements IBgStatisticsService
{
    @Autowired
    private BgStatisticsMapper bgStatisticsMapper;


    @Override
    public List<Map<String, Object>> getCategoryBlogs() {
        return bgStatisticsMapper.getCategoryBlogs();
    }

    @Override
    public List<Map<String, Object>> getCategorys() {
        return bgStatisticsMapper.getCategorys();
    }

    @Override
    public List<Map<String, Object>> getTagBlogs() {
        return bgStatisticsMapper.getTagBlogs();
    }

    @Override
    public List<Map<String, Object>> getTags() {
        return bgStatisticsMapper.getTags();
    }

    @Override
    public Map<String, Object> getStatCard() {
        return bgStatisticsMapper.getStatCard(SecurityUtils.getUsername());
    }

    @Override
    public List<Map<String, Object>> getViewTimes() {
        return bgStatisticsMapper.getViewTimes();
    }
}
