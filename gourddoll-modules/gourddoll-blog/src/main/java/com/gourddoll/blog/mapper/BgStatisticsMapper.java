package com.gourddoll.blog.mapper;

import com.gourddoll.blog.domain.BgTag;

import java.util.List;
import java.util.Map;

/**
 * 统计分析Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgStatisticsMapper
{

    List<Map<String, Object>> getCategoryBlogs();

    List<Map<String, Object>> getCategorys();
}
