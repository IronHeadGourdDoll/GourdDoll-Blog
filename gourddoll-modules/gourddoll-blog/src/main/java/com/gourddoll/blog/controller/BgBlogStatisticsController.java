package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgBlogStatistics;
import com.gourddoll.blog.service.IBgBlogStatisticsService;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.log.annotation.Log;
import com.gourddoll.common.log.enums.BusinessType;
import com.gourddoll.common.security.annotation.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 博客统计Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@RestController
@RequestMapping("/statistics")
public class BgBlogStatisticsController extends BaseController
{
    @Autowired
    private IBgBlogStatisticsService bgBlogStatisticsService;

    /**
     * 查询博客统计列表
     */
    @GetMapping("/list")
    public AjaxResult list(BgBlogStatistics bgBlogStatistics)
    {
        startPage();
        List<BgBlogStatistics> list = bgBlogStatisticsService.selectBgBlogStatisticsList(bgBlogStatistics);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出博客统计列表
     */
    @PreAuthorize(hasPermi = "blog:statistics:export")
    @Log(title = "博客统计", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgBlogStatistics bgBlogStatistics) throws IOException
    {
        List<BgBlogStatistics> list = bgBlogStatisticsService.selectBgBlogStatisticsList(bgBlogStatistics);
        ExcelUtil<BgBlogStatistics> util = new ExcelUtil<BgBlogStatistics>(BgBlogStatistics.class);
        util.exportExcel(response, list, "statistics");
    }

    /**
     * 获取博客统计详细信息
     */
    @GetMapping(value = "/{blogId}")
    public AjaxResult getInfo(@PathVariable("blogId") Long blogId)
    {
        return AjaxResult.success(bgBlogStatisticsService.selectBgBlogStatisticsById(blogId));
    }

    /**
     * 新增博客统计
     */
    @PreAuthorize(hasPermi = "blog:statistics:add")
    @Log(title = "博客统计", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgBlogStatistics bgBlogStatistics)
    {
        return toAjax(bgBlogStatisticsService.insertBgBlogStatistics(bgBlogStatistics));
    }

    /**
     * 修改博客统计
     */
    @PreAuthorize(hasPermi = "blog:statistics:edit")
    @Log(title = "博客统计", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgBlogStatistics bgBlogStatistics)
    {
        return toAjax(bgBlogStatisticsService.updateBgBlogStatistics(bgBlogStatistics));
    }

    /**
     * 删除博客统计
     */
    @PreAuthorize(hasPermi = "blog:statistics:remove")
    @Log(title = "博客统计", businessType = BusinessType.DELETE)
	@DeleteMapping("/{blogIds}")
    public AjaxResult remove(@PathVariable Long[] blogIds)
    {
        return toAjax(bgBlogStatisticsService.deleteBgBlogStatisticsByIds(blogIds));
    }
}
