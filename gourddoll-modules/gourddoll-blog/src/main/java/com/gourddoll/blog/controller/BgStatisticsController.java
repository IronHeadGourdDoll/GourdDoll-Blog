package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgTag;
import com.gourddoll.blog.service.IBgStatisticsService;
import com.gourddoll.blog.service.IBgTagService;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.log.annotation.Log;
import com.gourddoll.common.log.enums.BusinessType;
import com.gourddoll.common.security.annotation.PreAuthorize;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 统计分析Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Api(tags={"分析接口"})
@RestController
@RequestMapping("/statistics")
public class BgStatisticsController extends BaseController
{
    @Autowired
    private IBgStatisticsService bgStatisticsService;

    /**
     * 查询博客统计列表
     */
    @ApiOperation(value="查询博客统计列表", notes="详细描述")
    @GetMapping("/getCategoryBlogs")
    public AjaxResult list()
    {
        Map<String, Object> res = new HashMap<>();
        res.put("xData", bgStatisticsService.getCategorys());
        res.put("yData", bgStatisticsService.getCategoryBlogs());
        return AjaxResult.success(res);
    }
}
