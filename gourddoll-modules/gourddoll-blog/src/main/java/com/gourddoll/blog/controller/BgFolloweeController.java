package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgFollowee;
import com.gourddoll.blog.service.IBgFolloweeService;
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
 * 关注管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Api(tags={"博主关注接口"})
@RestController
@RequestMapping("/followee")
public class BgFolloweeController extends BaseController
{
    @Autowired
    private IBgFolloweeService bgFolloweeService;

    /**
     * 查询关注管理列表
     */
    @ApiOperation(value="获取所有关注列表", notes="详细描述")
    @GetMapping("/list")
    public AjaxResult list(BgFollowee bgFollowee)
    {
        startPage();
        List<BgFollowee> list = bgFolloweeService.selectBgFolloweeList(bgFollowee);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出关注管理列表
     */
    @ApiOperation(value="导出关注信息", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:followee:export")
    @Log(title = "关注管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgFollowee bgFollowee) throws IOException
    {
        List<BgFollowee> list = bgFolloweeService.selectBgFolloweeList(bgFollowee);
        ExcelUtil<BgFollowee> util = new ExcelUtil<BgFollowee>(BgFollowee.class);
        util.exportExcel(response, list, "followee");
    }

    /**
     * 获取关注管理详细信息
     */
    @ApiOperation(value="根据id获取关注信息", notes="详细描述")
    @GetMapping(value = "/{followeeId}")
    public AjaxResult getInfo(@PathVariable("followeeId") Long followeeId)
    {
        return AjaxResult.success(bgFolloweeService.selectBgFolloweeById(followeeId));
    }

    /**
     * 新增关注管理
     */
    @ApiOperation(value="新增关注信息", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:followee:add")
    @Log(title = "关注管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgFollowee bgFollowee)
    {
        return toAjax(bgFolloweeService.insertBgFollowee(bgFollowee));
    }

    /**
     * 修改关注管理
     */
    @ApiOperation(value="修改关注信息", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:followee:edit")
    @Log(title = "关注管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgFollowee bgFollowee)
    {
        return toAjax(bgFolloweeService.updateBgFollowee(bgFollowee));
    }

    /**
     * 删除关注管理
     */
    @ApiOperation(value="删除关注信息", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:followee:remove")
    @Log(title = "关注管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{followeeIds}")
    public AjaxResult remove(@PathVariable Long[] followeeIds)
    {
        return toAjax(bgFolloweeService.deleteBgFolloweeByIds(followeeIds));
    }
}
