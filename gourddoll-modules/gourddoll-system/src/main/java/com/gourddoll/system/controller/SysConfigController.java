package com.gourddoll.system.controller;

import com.gourddoll.common.core.constant.UserConstants;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.log.annotation.Log;
import com.gourddoll.common.log.enums.BusinessType;
import com.gourddoll.common.security.annotation.PreAuthorize;
import com.gourddoll.common.security.utils.SecurityUtils;
import com.gourddoll.system.domain.SysConfig;
import com.gourddoll.system.service.ISysConfigService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 参数配置 信息操作处理
 * 
 * @author gourddoll
 */
@Api(tags={"系统配置接口"})
@RestController
@RequestMapping("/config")
public class SysConfigController extends BaseController
{
    @Autowired
    private ISysConfigService configService;

    /**
     * 获取参数配置列表
     */
    @ApiOperation(value="获取所有系统配置", notes="详细描述")
    @PreAuthorize(hasPermi = "system:config:list")
    @GetMapping("/list")
    public AjaxResult list(SysConfig config)
    {
        startPage();
        List<SysConfig> list = configService.selectConfigList(config);
        return AjaxResult.success(getDataTable(list));
    }

    @ApiOperation(value="导出系统配置", notes="详细描述")
    @Log(title = "配置管理", businessType = BusinessType.EXPORT)
    @PreAuthorize(hasPermi = "system:config:export")
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysConfig config) throws IOException
    {
        List<SysConfig> list = configService.selectConfigList(config);
        ExcelUtil<SysConfig> util = new ExcelUtil<SysConfig>(SysConfig.class);
        util.exportExcel(response, list, "配置数据");
    }

    /**
     * 根据配置编号获取详细信息
     */
    @ApiOperation(value="根据配置编号获取详细信息", notes="详细描述")
    @GetMapping(value = "/{configId}")
    public AjaxResult getInfo(@PathVariable Long configId)
    {
        return AjaxResult.success(configService.selectConfigById(configId));
    }

    /**
     * 根据配置键名查询配置值
     */
    @ApiOperation(value="根据配置键名获取配置值", notes="详细描述")
    @GetMapping(value = "/configKey/{configKey}")
    public AjaxResult getConfigKey(@PathVariable String configKey)
    {
        return AjaxResult.success(configService.selectConfigByKey(configKey));
    }

    /**
     * 新增系统配置
     */
    @ApiOperation(value="新增系统配置", notes="详细描述")
    @PreAuthorize(hasPermi = "system:config:add")
    @Log(title = "配置管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody SysConfig config)
    {
        if (UserConstants.NOT_UNIQUE.equals(configService.checkConfigKeyUnique(config)))
        {
            return AjaxResult.error("新增配置'" + config.getConfigName() + "'失败，配置键名已存在");
        }
        config.setCreateBy(SecurityUtils.getUsername());
        return toAjax(configService.insertConfig(config));
    }

    /**
     * 修改系统配置
     */
    @ApiOperation(value="新增系统配置", notes="详细描述")
    @PreAuthorize(hasPermi = "system:config:edit")
    @Log(title = "配置管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody SysConfig config)
    {
        if (UserConstants.NOT_UNIQUE.equals(configService.checkConfigKeyUnique(config)))
        {
            return AjaxResult.error("修改配置'" + config.getConfigName() + "'失败，配置键名已存在");
        }
        config.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(configService.updateConfig(config));
    }

    /**
     * 删除系统配置
     */
    @ApiOperation(value="删除系统配置", notes="详细描述")
    @PreAuthorize(hasPermi = "system:config:remove")
    @Log(title = "配置管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{configIds}")
    public AjaxResult remove(@PathVariable Long[] configIds)
    {
        return toAjax(configService.deleteConfigByIds(configIds));
    }

    /**
     * 清空缓存
     */
    @ApiOperation(value="清空缓存", notes="详细描述")
    @PreAuthorize(hasPermi = "system:config:remove")
    @Log(title = "配置管理", businessType = BusinessType.CLEAN)
    @DeleteMapping("/clearCache")
    public AjaxResult clearCache()
    {
        configService.clearCache();
        return AjaxResult.success();
    }
}
