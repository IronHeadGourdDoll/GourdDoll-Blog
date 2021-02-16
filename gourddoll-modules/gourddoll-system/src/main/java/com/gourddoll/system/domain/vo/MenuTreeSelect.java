package com.gourddoll.system.domain.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.gourddoll.system.api.domain.SysDept;
import com.gourddoll.system.domain.SysMenu;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Treeselect树结构实体类
 * 
 * @author gourddoll
 */
public class MenuTreeSelect implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 节点ID */
    private Long id;

    /** 节点名称 */
    private String label;

    /** 父节点ID */
    private Long parentId;

    /** 路由唯一标识 */
    private String pathCode;

    /** 路由地址 */
    private String path;

    /** 组件路径 */
    private String component;

    /** 是否外链 */
    private Boolean isFrame;

    /** 是否缓存 */
    private Boolean isCache;

    /** 菜单类型 */
    private String menuType;

    /** 权限标识 */
    private String perms;

    /** 菜单图标 */
    private String icon;

    /** 子节点 */
    @JsonInclude(JsonInclude.Include.NON_EMPTY)
    private List<MenuTreeSelect> children;

    public MenuTreeSelect()
    {

    }

    public MenuTreeSelect(SysMenu menu)
    {
        this.id = menu.getMenuId();
        this.label = menu.getMenuName();
        this.parentId = menu.getParentId();
        this.pathCode = menu.getPathCode();
        this.path = menu.getPath();
        this.component = menu.getComponent();
        this.isFrame = menu.getIsFrame();
        this.isCache = menu.getIsCache();
        this.menuType = menu.getMenuType();
        this.perms = menu.getPerms();
        this.icon = menu.getIcon();
        List<MenuTreeSelect> child = menu.getChildren().stream().map(MenuTreeSelect::new).collect(Collectors.toList());
        if(child.size() < 1){
            this.children = null;
        }else {
            this.children = child;
        }
    }

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public String getLabel()
    {
        return label;
    }

    public void setLabel(String label)
    {
        this.label = label;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public String getPathCode() {
        return pathCode;
    }

    public void setPathCode(String pathCode) {
        this.path = pathCode;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getComponent() {
        return component;
    }

    public void setComponent(String component) {
        this.component = component;
    }

    public Boolean getIsFrame() {
        return isFrame;
    }

    public void setIsFrame(Boolean isFrame) {
        this.isFrame = isFrame;
    }

    public Boolean getIsCache() {
        return isCache;
    }

    public void setIsCache(Boolean isCache) {
        this.isCache = isCache;
    }

    public String getMenuType() {
        return menuType;
    }

    public void setMenuType(String menuType) {
        this.menuType = menuType;
    }

    public String getPerms() {
        return perms;
    }

    public void setPerms(String perms) {
        this.perms = perms;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public List<MenuTreeSelect> getChildren()
    {
        return children;
    }

    public void setChildren(List<MenuTreeSelect> children)
    {
        this.children = children;
    }
}
