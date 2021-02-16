package com.gourddoll.system.controller;

import com.gourddoll.common.core.constant.Constants;
import com.gourddoll.common.core.constant.UserConstants;
import com.gourddoll.common.core.utils.StringUtils;
import com.gourddoll.common.core.utils.bean.TransUtil;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.log.annotation.Log;
import com.gourddoll.common.log.enums.BusinessType;
import com.gourddoll.common.security.annotation.PreAuthorize;
import com.gourddoll.common.security.utils.SecurityUtils;
import com.gourddoll.system.domain.SysMenu;
import com.gourddoll.system.domain.dto.SysMenuDto;
import com.gourddoll.system.service.ISysMenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 菜单信息
 * 
 * @author gourddoll
 */
@Api(tags={"后台菜单接口"})
@RestController
@RequestMapping("/menu")
public class SysMenuController extends BaseController
{
    @Autowired
    private ISysMenuService menuService;

    /**
     * 获取菜单列表
     */
    @ApiOperation(value="获取所有菜单", notes="详细描述")
    @PreAuthorize(hasPermi = "system:menu:list")
    @GetMapping("/list")
    public AjaxResult list(SysMenu menu)
    {
        startPage();
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuList(menu, userId);
        List<SysMenuDto> menusDto = new ArrayList<>();
        for(SysMenu m : menus){
            m.setChildren(null);
            SysMenuDto mDto = new SysMenuDto();
            TransUtil.po2dto(m,mDto);
            menusDto.add(mDto);
        }
        return AjaxResult.success(getDataTable(menusDto));
    }

    /**
     * 根据菜单编号获取详细信息
     */
    @ApiOperation(value="根据菜单编号获取详细信息", notes="详细描述")
    @PreAuthorize(hasPermi = "system:menu:query")
    @GetMapping(value = "/{menuId}")
    public AjaxResult getInfo(@PathVariable Long menuId)
    {
        return AjaxResult.success(menuService.selectMenuById(menuId));
    }

    /**
     * 获取菜单下拉树列表
     */
    @ApiOperation(value="获取菜单下拉树列表", notes="详细描述")
    @GetMapping("/treeselect")
    public AjaxResult treeselect(SysMenu menu)
    {
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuList(menu, userId);
        return AjaxResult.success(menuService.buildMenuTreeSelect(menus));
    }

    /**
     * 获取菜单下拉树列表(左侧可见菜单)
     */
    @ApiOperation(value="获取左侧可见菜单下拉树列表", notes="详细描述")
    @GetMapping("/treeselect-lv")
    public AjaxResult treeselectLV(SysMenu menu)
    {
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuListLV(menu, userId);
        return AjaxResult.success(menuService.buildMenuTreeSelect(menus));
    }

    /**
     * 获取对应角色菜单列表树
     */
    @ApiOperation(value="获取对应角色菜单列表树", notes="详细描述")
    @GetMapping(value = "/roleMenuTreeselect/{roleId}")
    public AjaxResult roleMenuTreeselect(@PathVariable("roleId") Long roleId)
    {
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuList(userId);
        AjaxResult ajax = AjaxResult.success();
        ajax.put("checkedKeys", menuService.selectMenuListByRoleId(roleId));
        ajax.put("menus", menuService.buildMenuTreeSelect(menus));
        return ajax;
    }

    /**
     * 新增菜单
     */
    @ApiOperation(value="新增菜单", notes="详细描述")
    @PreAuthorize(hasPermi = "system:menu:add")
    @Log(title = "菜单管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody SysMenu menu)
    {
        if (UserConstants.NOT_UNIQUE.equals(menuService.checkMenuNameUnique(menu)))
        {
            return AjaxResult.error("新增菜单'" + menu.getMenuName() + "'失败，菜单名称已存在");
        }
        else if (UserConstants.YES_FRAME.equals(menu.getIsFrame())
                && !StringUtils.startsWithAny(menu.getPath(), Constants.HTTP, Constants.HTTPS))
        {
            return AjaxResult.error("新增菜单'" + menu.getMenuName() + "'失败，地址必须以http(s)://开头");
        }
        menu.setCreateBy(SecurityUtils.getUsername());
        return toAjax(menuService.insertMenu(menu));
    }

    /**
     * 修改菜单
     */
    @ApiOperation(value="修改菜单", notes="详细描述")
    @PreAuthorize(hasPermi = "system:menu:edit")
    @Log(title = "菜单管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody SysMenu menu)
    {
        if (UserConstants.NOT_UNIQUE.equals(menuService.checkMenuNameUnique(menu)))
        {
            return AjaxResult.error("修改菜单'" + menu.getMenuName() + "'失败，菜单名称已存在");
        }
        else if (UserConstants.YES_FRAME.equals(menu.getIsFrame())
                && !StringUtils.startsWithAny(menu.getPath(), Constants.HTTP, Constants.HTTPS))
        {
            return AjaxResult.error("修改菜单'" + menu.getMenuName() + "'失败，地址必须以http(s)://开头");
        }
        else if (menu.getMenuId().equals(menu.getParentId()))
        {
            return AjaxResult.error("修改菜单'" + menu.getMenuName() + "'失败，上级菜单不能选择自己");
        }
        menu.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(menuService.updateMenu(menu));
    }

    /**
     * 删除菜单
     */
    @ApiOperation(value="删除菜单", notes="详细描述")
    @PreAuthorize(hasPermi = "system:menu:remove")
    @Log(title = "菜单管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{menuIds}")
    public AjaxResult remove(@PathVariable Long[] menuIds)
    {
        int flag = 1;
        for(Long menuId : menuIds){
            if (menuService.hasChildByMenuId(menuId))
            {
                return AjaxResult.error(menuId+"存在子菜单,不允许删除");
            }
            if (menuService.checkMenuExistRole(menuId))
            {
                return AjaxResult.error(menuId+"菜单已分配,不允许删除");
            }
            flag = flag*menuService.deleteMenuById(menuId);
        }
        return toAjax(flag);
    }
}