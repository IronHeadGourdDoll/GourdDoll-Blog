package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgCategory;
import com.gourddoll.blog.service.IBgCategoryService;
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
 * 分类管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Api(tags={"博客分类接口"})
@RestController
@RequestMapping("/category")
public class BgCategoryController extends BaseController
{
    @Autowired
    private IBgCategoryService bgCategoryService;

    /**
     * 查询分类管理列表
     */
    @ApiOperation(value="获取所有博客分类", notes="详细描述")
    @GetMapping("/list")
    public AjaxResult list(BgCategory bgCategory)
    {
        startPage();
        List<BgCategory> list = bgCategoryService.selectBgCategoryList(bgCategory);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出分类管理列表
     */
    @ApiOperation(value="导出博客分类", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:category:export")
    @Log(title = "分类管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgCategory bgCategory) throws IOException
    {
        List<BgCategory> list = bgCategoryService.selectBgCategoryList(bgCategory);
        ExcelUtil<BgCategory> util = new ExcelUtil<BgCategory>(BgCategory.class);
        util.exportExcel(response, list, "category");
    }

    /**
     * 获取分类管理详细信息
     */
    @ApiOperation(value="根据id获取博客分类", notes="详细描述")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgCategoryService.selectBgCategoryById(id));
    }

    /**
     * 新增分类管理
     */
    @ApiOperation(value="新增博客分类", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:category:add")
    @Log(title = "分类管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgCategory bgCategory)
    {
        return toAjax(bgCategoryService.insertBgCategory(bgCategory));
    }

    /**
     * 修改分类管理
     */
    @ApiOperation(value="修改博客分类", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:category:edit")
    @Log(title = "分类管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgCategory bgCategory)
    {
        return toAjax(bgCategoryService.updateBgCategory(bgCategory));
    }

    /**
     * 删除分类管理
     */
    @ApiOperation(value="删除博客分类", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:category:remove")
    @Log(title = "分类管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgCategoryService.deleteBgCategoryByIds(ids));
    }
}
