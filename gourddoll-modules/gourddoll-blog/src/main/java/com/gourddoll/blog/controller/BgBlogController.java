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
import com.gourddoll.blog.domain.BgBlog;
import com.gourddoll.blog.service.IBgBlogService;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.page.TableDataInfo;

/**
 * 博客管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@RestController
@RequestMapping("/blog")
public class BgBlogController extends BaseController
{
    @Autowired
    private IBgBlogService bgBlogService;

    /**
     * 查询博客管理列表
     */
    @GetMapping("/list")
    public TableDataInfo list(BgBlog bgBlog)
    {
        startPage();
        List<BgBlog> list = bgBlogService.selectBgBlogList(bgBlog);
        return getDataTable(list);
    }

    /**
     * 导出博客管理列表
     */
    @PreAuthorize(hasPermi = "blog:blog:export")
    @Log(title = "博客管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgBlog bgBlog) throws IOException
    {
        List<BgBlog> list = bgBlogService.selectBgBlogList(bgBlog);
        ExcelUtil<BgBlog> util = new ExcelUtil<BgBlog>(BgBlog.class);
        util.exportExcel(response, list, "blog");
    }

    /**
     * 获取博客管理详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgBlogService.selectBgBlogById(id));
    }

    /**
     * 新增博客管理
     */
    @PreAuthorize(hasPermi = "blog:blog:add")
    @Log(title = "博客管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgBlog bgBlog)
    {
        return toAjax(bgBlogService.insertBgBlog(bgBlog));
    }

    /**
     * 修改博客管理
     */
    @PreAuthorize(hasPermi = "blog:blog:edit")
    @Log(title = "博客管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgBlog bgBlog)
    {
        return toAjax(bgBlogService.updateBgBlog(bgBlog));
    }

    /**
     * 删除博客管理
     */
    @PreAuthorize(hasPermi = "blog:blog:remove")
    @Log(title = "博客管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgBlogService.deleteBgBlogByIds(ids));
    }
}
