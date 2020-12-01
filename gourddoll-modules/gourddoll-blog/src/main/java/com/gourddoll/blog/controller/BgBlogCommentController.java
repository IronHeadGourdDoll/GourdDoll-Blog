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
import com.gourddoll.blog.domain.BgBlogComment;
import com.gourddoll.blog.service.IBgBlogCommentService;
import com.gourddoll.common.core.web.controller.BaseController;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.common.core.utils.poi.ExcelUtil;
import com.gourddoll.common.core.web.page.TableDataInfo;

/**
 * 评论管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@RestController
@RequestMapping("/comment")
public class BgBlogCommentController extends BaseController
{
    @Autowired
    private IBgBlogCommentService bgBlogCommentService;

    /**
     * 查询评论管理列表
     */
    @GetMapping("/list")
    public TableDataInfo list(BgBlogComment bgBlogComment)
    {
        startPage();
        List<BgBlogComment> list = bgBlogCommentService.selectBgBlogCommentList(bgBlogComment);
        return getDataTable(list);
    }

    /**
     * 导出评论管理列表
     */
    @PreAuthorize(hasPermi = "blog:comment:export")
    @Log(title = "评论管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BgBlogComment bgBlogComment) throws IOException
    {
        List<BgBlogComment> list = bgBlogCommentService.selectBgBlogCommentList(bgBlogComment);
        ExcelUtil<BgBlogComment> util = new ExcelUtil<BgBlogComment>(BgBlogComment.class);
        util.exportExcel(response, list, "comment");
    }

    /**
     * 获取评论管理详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgBlogCommentService.selectBgBlogCommentById(id));
    }

    /**
     * 新增评论管理
     */
    @PreAuthorize(hasPermi = "blog:comment:add")
    @Log(title = "评论管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BgBlogComment bgBlogComment)
    {
        return toAjax(bgBlogCommentService.insertBgBlogComment(bgBlogComment));
    }

    /**
     * 修改评论管理
     */
    @PreAuthorize(hasPermi = "blog:comment:edit")
    @Log(title = "评论管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BgBlogComment bgBlogComment)
    {
        return toAjax(bgBlogCommentService.updateBgBlogComment(bgBlogComment));
    }

    /**
     * 删除评论管理
     */
    @PreAuthorize(hasPermi = "blog:comment:remove")
    @Log(title = "评论管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgBlogCommentService.deleteBgBlogCommentByIds(ids));
    }
}
