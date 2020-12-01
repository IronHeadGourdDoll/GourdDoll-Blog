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
import com.gourddoll.blog.domain.BgTag;
import com.gourddoll.blog.service.IBgTagService;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.page.TableDataInfo;

/**
 * 标签管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@RestController
@RequestMapping("/tag")
public class BgTagController extends BaseController
{
    @Autowired
    private IBgTagService bgTagService;

    /**
     * 查询标签管理列表
     */
    @GetMapping("/list")
    public TableDataInfo list(BgTag bgTag)
    {
        startPage();
        List<BgTag> list = bgTagService.selectBgTagList(bgTag);
        return getDataTable(list);
    }

    /**
     * 导出标签管理列表
     */
    @PreAuthorize(hasPermi = "blog:tag:export")
    @Log(title = "标签管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgTag bgTag) throws IOException
    {
        List<BgTag> list = bgTagService.selectBgTagList(bgTag);
        ExcelUtil<BgTag> util = new ExcelUtil<BgTag>(BgTag.class);
        util.exportExcel(response, list, "tag");
    }

    /**
     * 获取标签管理详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgTagService.selectBgTagById(id));
    }

    /**
     * 新增标签管理
     */
    @PreAuthorize(hasPermi = "blog:tag:add")
    @Log(title = "标签管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgTag bgTag)
    {
        return toAjax(bgTagService.insertBgTag(bgTag));
    }

    /**
     * 修改标签管理
     */
    @PreAuthorize(hasPermi = "blog:tag:edit")
    @Log(title = "标签管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgTag bgTag)
    {
        return toAjax(bgTagService.updateBgTag(bgTag));
    }

    /**
     * 删除标签管理
     */
    @PreAuthorize(hasPermi = "blog:tag:remove")
    @Log(title = "标签管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgTagService.deleteBgTagByIds(ids));
    }
}
