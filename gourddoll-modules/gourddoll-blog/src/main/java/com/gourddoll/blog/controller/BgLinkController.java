package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgLink;
import com.gourddoll.blog.service.IBgLinkService;
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
 * 友链管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@RestController
@RequestMapping("/link")
public class BgLinkController extends BaseController
{
    @Autowired
    private IBgLinkService bgLinkService;

    /**
     * 查询友链管理列表
     */
    @GetMapping("/list")
    public AjaxResult list(BgLink bgLink)
    {
        startPage();
        List<BgLink> list = bgLinkService.selectBgLinkList(bgLink);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出友链管理列表
     */
    @PreAuthorize(hasPermi = "blog:link:export")
    @Log(title = "友链管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgLink bgLink) throws IOException
    {
        List<BgLink> list = bgLinkService.selectBgLinkList(bgLink);
        ExcelUtil<BgLink> util = new ExcelUtil<BgLink>(BgLink.class);
        util.exportExcel(response, list, "link");
    }

    /**
     * 获取友链管理详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgLinkService.selectBgLinkById(id));
    }

    /**
     * 新增友链管理
     */
    @PreAuthorize(hasPermi = "blog:link:add")
    @Log(title = "友链管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgLink bgLink)
    {
        return toAjax(bgLinkService.insertBgLink(bgLink));
    }

    /**
     * 修改友链管理
     */
    @PreAuthorize(hasPermi = "blog:link:edit")
    @Log(title = "友链管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgLink bgLink)
    {
        return toAjax(bgLinkService.updateBgLink(bgLink));
    }

    /**
     * 删除友链管理
     */
    @PreAuthorize(hasPermi = "blog:link:remove")
    @Log(title = "友链管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgLinkService.deleteBgLinkByIds(ids));
    }
}
