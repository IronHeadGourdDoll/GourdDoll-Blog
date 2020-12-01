package com.gourddoll.blog.controller;

import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.gourddoll.common.log.annotation.Log;
import com.gourddoll.common.log.enums.BusinessType;
import com.gourddoll.common.security.annotation.PreAuthorize;
import com.gourddoll.blog.domain.BgCategory;
import com.gourddoll.blog.service.IBgCategoryService;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.page.TableDataInfo;

/**
 * 分类管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@RestController
@RequestMapping("/category")
public class BgCategoryController extends BaseController
{
    @Autowired
    private IBgCategoryService bgCategoryService;

    /**
     * 查询分类管理列表
     */
    @GetMapping("/list")
    public TableDataInfo list(BgCategory bgCategory)
    {
        startPage();
        List<BgCategory> list = bgCategoryService.selectBgCategoryList(bgCategory);
        return getDataTable(list);
    }

    /**
     * 导出分类管理列表
     */
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
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgCategoryService.selectBgCategoryById(id));
    }

    /**
     * 新增分类管理
     */
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
    @PreAuthorize(hasPermi = "blog:category:remove")
    @Log(title = "分类管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgCategoryService.deleteBgCategoryByIds(ids));
    }
}
