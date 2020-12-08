package com.gourddoll.blog.controller;

import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

import com.gourddoll.common.search.service.ElasticSearchService;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.index.IndexRequest;
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

    @Autowired
    private ElasticSearchService esService;

    private String indexName = "blog";

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


    //1.查看索引是否存在
    @GetMapping(value = "/index")
    public boolean test() throws IOException {
        return esService.existIndex(indexName,"1");
    }
    //2.导入所有数据
    @GetMapping(value = "/importAll")
    public boolean importAll() throws IOException {
        BgBlog bgBlog = new BgBlog();
        List<BgBlog> list = bgBlogService.selectBgBlogList(bgBlog);
        return esService.importListData(indexName,list);
    }

    //3.分词查询
    @GetMapping(value = "/searchPhrase/{keyword}")
    public List<BgBlog> searchPhrase(@PathVariable("keyword") String keyword) throws IOException {
        return esService.searchPhrase(indexName,"content",keyword,new BgBlog());
    }

    //4.添加文档
    @GetMapping(value = "/addDocument")
    public String addDocument() throws IOException {
        BgBlog bgBlog = new BgBlog();//新数据
        return esService.addDocument("t", "doc", bgBlog);
    }

    //5.测试是否添加成功
    @GetMapping(value = "/docIsExists")
    public boolean docIsExists() throws IOException {
        return esService.existDoc("blog","doc", "1L");
    }

    //6.根据id查询
    @GetMapping(value = "/getReponse")
    public GetResponse getReponse() throws IOException {
        return esService.getReponse("blog","doc", "1L");
    }

    //7.查询所有
    @GetMapping(value = "/searchAll")
    public List<BgBlog> searchAll() throws IOException {
        return esService.searchAll("blog",new BgBlog());
    }
}
