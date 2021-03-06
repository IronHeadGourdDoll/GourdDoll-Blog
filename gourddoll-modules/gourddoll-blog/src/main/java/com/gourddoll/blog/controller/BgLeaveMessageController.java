package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgLeaveMessage;
import com.gourddoll.blog.service.IBgLeaveMessageService;
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
 * 留言管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Api(tags={"留言接口"})
@RestController
@RequestMapping("/leave")
public class BgLeaveMessageController extends BaseController
{
    @Autowired
    private IBgLeaveMessageService bgLeaveMessageService;

    /**
     * 查询留言管理列表
     */
    @ApiOperation(value="查询留言列表", notes="详细描述")
    @GetMapping("/list")
    public AjaxResult list(BgLeaveMessage bgLeaveMessage)
    {
        startPage();
        List<BgLeaveMessage> list = bgLeaveMessageService.selectBgLeaveMessageList(bgLeaveMessage);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出留言管理列表
     */
    @ApiOperation(value="导出留言列表", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:leave:export")
    @Log(title = "留言管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgLeaveMessage bgLeaveMessage) throws IOException
    {
        List<BgLeaveMessage> list = bgLeaveMessageService.selectBgLeaveMessageList(bgLeaveMessage);
        ExcelUtil<BgLeaveMessage> util = new ExcelUtil<BgLeaveMessage>(BgLeaveMessage.class);
        util.exportExcel(response, list, "leave");
    }

    /**
     * 获取留言管理详细信息
     */
    @ApiOperation(value="获取留言详细信息", notes="详细描述")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgLeaveMessageService.selectBgLeaveMessageById(id));
    }

    /**
     * 新增留言管理
     */
    @ApiOperation(value="新增留言", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:leave:add")
    @Log(title = "留言管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgLeaveMessage bgLeaveMessage)
    {
        return toAjax(bgLeaveMessageService.insertBgLeaveMessage(bgLeaveMessage));
    }

    /**
     * 修改留言管理
     */
    @ApiOperation(value="修改留言", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:leave:edit")
    @Log(title = "留言管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgLeaveMessage bgLeaveMessage)
    {
        return toAjax(bgLeaveMessageService.updateBgLeaveMessage(bgLeaveMessage));
    }

    /**
     * 删除留言管理
     */
    @ApiOperation(value="删除留言", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:leave:remove")
    @Log(title = "留言管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgLeaveMessageService.deleteBgLeaveMessageByIds(ids));
    }
}
