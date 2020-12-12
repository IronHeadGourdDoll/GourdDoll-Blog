package com.gourddoll.system.controller;

import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.log.annotation.Log;
import com.gourddoll.common.log.enums.BusinessType;
import com.gourddoll.common.security.annotation.PreAuthorize;
import com.gourddoll.common.security.utils.SecurityUtils;
import com.gourddoll.system.domain.SysNotice;
import com.gourddoll.system.service.ISysNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 公告 信息操作处理
 * 
 * @author gourddoll
 */
@RestController
@RequestMapping("/notice")
public class SysNoticeController extends BaseController
{
    @Autowired
    private ISysNoticeService noticeService;

    /**
     * 获取通知公告列表
     */
    @PreAuthorize(hasPermi = "system:notice:list")
    @GetMapping("/list")
    public AjaxResult list(SysNotice notice)
    {
        startPage();
        List<SysNotice> list = noticeService.selectNoticeList(notice);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 根据通知公告编号获取详细信息
     */
    @PreAuthorize(hasPermi = "system:notice:query")
    @GetMapping(value = "/{noticeId}")
    public AjaxResult getInfo(@PathVariable Long noticeId)
    {
        return AjaxResult.success(noticeService.selectNoticeById(noticeId));
    }

    /**
     * 新增通知公告
     */
    @PreAuthorize(hasPermi = "system:notice:add")
    @Log(title = "通知公告", businessType = BusinessType.UPDATE)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody SysNotice notice)
    {
        notice.setCreateBy(SecurityUtils.getUsername());
        return toAjax(noticeService.insertNotice(notice));
    }

    /**
     * 修改通知公告
     */
    @PreAuthorize(hasPermi = "system:notice:edit")
    @Log(title = "通知公告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody SysNotice notice)
    {
        notice.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(noticeService.updateNotice(notice));
    }

    /**
     * 删除通知公告
     */
    @PreAuthorize(hasPermi = "system:notice:remove")
    @Log(title = "通知公告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{noticeIds}")
    public AjaxResult remove(@PathVariable Long[] noticeIds)
    {
        return toAjax(noticeService.deleteNoticeByIds(noticeIds));
    }
}
