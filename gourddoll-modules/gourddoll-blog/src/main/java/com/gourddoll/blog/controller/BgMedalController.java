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
import com.gourddoll.blog.domain.BgMedal;
import com.gourddoll.blog.service.IBgMedalService;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.page.TableDataInfo;

/**
 * 勋章管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@RestController
@RequestMapping("/medal")
public class BgMedalController extends BaseController
{
    @Autowired
    private IBgMedalService bgMedalService;

    /**
     * 查询勋章管理列表
     */
    @GetMapping("/list")
    public TableDataInfo list(BgMedal bgMedal)
    {
        startPage();
        List<BgMedal> list = bgMedalService.selectBgMedalList(bgMedal);
        return getDataTable(list);
    }

    /**
     * 导出勋章管理列表
     */
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
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgMedalService.selectBgMedalById(id));
    }

    /**
     * 新增勋章管理
     */
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
    @PreAuthorize(hasPermi = "blog:medal:remove")
    @Log(title = "勋章管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgMedalService.deleteBgMedalByIds(ids));
    }
}
