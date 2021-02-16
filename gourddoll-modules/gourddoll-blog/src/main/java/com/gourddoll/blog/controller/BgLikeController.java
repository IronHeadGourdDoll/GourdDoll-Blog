package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgLike;
import com.gourddoll.blog.service.IBgLikeService;
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
import java.util.List;

/**
 * 点赞管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Api(tags={"点赞接口"})
@RestController
@RequestMapping("/like")
public class BgLikeController extends BaseController
{
    @Autowired
    private IBgLikeService bgLikeService;

    /**
     * 查询点赞管理列表
     */
    @ApiOperation(value="查询点赞列表", notes="详细描述")
    @GetMapping("/list")
    public AjaxResult list(BgLike bgLike)
    {
        startPage();
        List<BgLike> list = bgLikeService.selectBgLikeList(bgLike);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出点赞管理列表
     */
    @ApiOperation(value="导出点赞列表", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:like:export")
    @Log(title = "点赞管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgLike bgLike) throws IOException
    {
        List<BgLike> list = bgLikeService.selectBgLikeList(bgLike);
        ExcelUtil<BgLike> util = new ExcelUtil<BgLike>(BgLike.class);
        util.exportExcel(response, list, "like");
    }

    /**
     * 获取点赞管理详细信息
     */
    @ApiOperation(value="获取点赞详细信息", notes="详细描述")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgLikeService.selectBgLikeById(id));
    }

    /**
     * 新增点赞管理
     */
    @ApiOperation(value="新增点赞", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:like:add")
    @Log(title = "点赞管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgLike bgLike)
    {
        return toAjax(bgLikeService.insertBgLike(bgLike));
    }

    /**
     * 修改点赞管理
     */
    @ApiOperation(value="修改点赞", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:like:edit")
    @Log(title = "点赞管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgLike bgLike)
    {
        return toAjax(bgLikeService.updateBgLike(bgLike));
    }

    /**
     * 删除点赞管理
     */
    @ApiOperation(value="删除点赞", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:like:remove")
    @Log(title = "点赞管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgLikeService.deleteBgLikeByIds(ids));
    }
}
