package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgMedal;
import com.gourddoll.blog.service.IBgMedalService;
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
 * 勋章管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Api(tags={"勋章接口"})
@RestController
@RequestMapping("/medal")
public class BgMedalController extends BaseController
{
    @Autowired
    private IBgMedalService bgMedalService;

    /**
     * 查询勋章管理列表
     */
    @ApiOperation(value="查询勋章列表", notes="详细描述")
    @GetMapping("/list")
    public AjaxResult list(BgMedal bgMedal)
    {
        startPage();
        List<BgMedal> list = bgMedalService.selectBgMedalList(bgMedal);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出勋章管理列表
     */
    @ApiOperation(value="导出勋章列表", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:medal:export")
    @Log(title = "勋章管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgMedal bgMedal) throws IOException
    {
        List<BgMedal> list = bgMedalService.selectBgMedalList(bgMedal);
        ExcelUtil<BgMedal> util = new ExcelUtil<BgMedal>(BgMedal.class);
        util.exportExcel(response, list, "medal");
    }

    /**
     * 获取勋章管理详细信息
     */
    @ApiOperation(value="获取勋章详细信息", notes="详细描述")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgMedalService.selectBgMedalById(id));
    }

    /**
     * 新增勋章管理
     */
    @ApiOperation(value="新增勋章", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:medal:add")
    @Log(title = "勋章管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgMedal bgMedal)
    {
        return toAjax(bgMedalService.insertBgMedal(bgMedal));
    }

    /**
     * 修改勋章管理
     */
    @ApiOperation(value="修改勋章", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:medal:edit")
    @Log(title = "勋章管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgMedal bgMedal)
    {
        return toAjax(bgMedalService.updateBgMedal(bgMedal));
    }

    /**
     * 删除勋章管理
     */
    @ApiOperation(value="删除勋章", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:medal:remove")
    @Log(title = "勋章管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgMedalService.deleteBgMedalByIds(ids));
    }
}
