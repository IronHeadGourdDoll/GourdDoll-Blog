package com.gourddoll.blog.controller;

import com.gourddoll.blog.domain.BgBlogComment;
import com.gourddoll.blog.service.IBgBlogCommentService;
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
 * 评论管理Controller
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Api(tags={"博客评论接口"})
@RestController
@RequestMapping("/comment")
public class BgBlogCommentController extends BaseController
{
    @Autowired
    private IBgBlogCommentService bgBlogCommentService;

    /**
     * 查询评论管理列表
     */
    @ApiOperation(value="获取所有博客评论", notes="详细描述")
    @GetMapping("/list")
    public AjaxResult list(BgBlogComment bgBlogComment)
    {
        startPage();
        List<BgBlogComment> list = bgBlogCommentService.selectBgBlogCommentList(bgBlogComment);
        return AjaxResult.success(getDataTable(list));
    }

    /**
     * 导出评论管理列表
     */
    @ApiOperation(value="导出博客评论", notes="详细描述")
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
    @ApiOperation(value="根据id获取博客评论", notes="详细描述")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(bgBlogCommentService.selectBgBlogCommentById(id));
    }

    /**
     * 新增评论管理
     */
    @ApiOperation(value="新增博客评论", notes="详细描述")
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
    @ApiOperation(value="修改博客评论", notes="详细描述")
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
    @ApiOperation(value="删除博客评论", notes="详细描述")
    @PreAuthorize(hasPermi = "blog:comment:remove")
    @Log(title = "评论管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(bgBlogCommentService.deleteBgBlogCommentByIds(ids));
    }

    /**
     * 查询博客评论树
     *
     * @return
     */
    @PreAuthorize(hasPermi = "mcs:comment:list")
    @GetMapping("/list-tree/{id}")
    public AjaxResult listTree(@PathVariable("id") Long id) {
        BgBlogComment bgBlogComment = new BgBlogComment();
        bgBlogComment.setBlogId(id);
        startPage();
        List<BgBlogComment> list = bgBlogCommentService.selectBlogCommentList(bgBlogComment);
        return AjaxResult.success(bgBlogCommentService.buildCommentTreeSelect(list));
    }
}
