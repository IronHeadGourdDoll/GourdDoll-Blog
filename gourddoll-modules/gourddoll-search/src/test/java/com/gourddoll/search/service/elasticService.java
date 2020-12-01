/*
package com.gourddoll.search.service;

import com.example.elastic.dao.BlogMapper;
import com.example.elastic.entity.Blog;
import com.example.elastic.entity.User;

import com.google.gson.Gson;
import org.elasticsearch.action.admin.indices.create.CreateIndexRequest;
import org.elasticsearch.action.admin.indices.create.CreateIndexResponse;
import org.elasticsearch.action.admin.indices.delete.DeleteIndexRequest;
import org.elasticsearch.action.bulk.BulkRequest;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.support.master.AcknowledgedResponse;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;

import org.elasticsearch.common.document.DocumentField;
import org.elasticsearch.common.text.Text;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.*;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.fetch.subphase.FetchSourceContext;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightField;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@Service
public class elasticService {

    @Autowired
    @Qualifier("client")//自己配置的es
    private RestHighLevelClient client;
    @Autowired
    private BlogMapper blogMapper;

    Gson gson = new Gson();

    //1.创建索引
    public void createIndex() throws IOException {
        CreateIndexRequest request = new CreateIndexRequest("global_house_list");
        CreateIndexResponse createIndexResponse = client.indices().create(request, RequestOptions.DEFAULT);
        System.out.println(createIndexResponse);
    }

    //查看索引是否存在
    public boolean IndexExists() throws IOException {
        GetRequest getRequest = new GetRequest();
        getRequest.index("global_house_list").id("1572502958266");
        return client.exists(getRequest, RequestOptions.DEFAULT);
    }

    public void testDeleteIndex() throws IOException {
        DeleteIndexRequest request = new DeleteIndexRequest("global_house_list");
        AcknowledgedResponse delete = client.indices().delete(request, RequestOptions.DEFAULT);
        System.out.println(delete.isAcknowledged());
    }

    // 测试添加文档
    public String addDocument() throws IOException {
        // 创建对象
        Blog blog=new Blog(100L,"java从入门到转行");
        // 创建请求
        IndexRequest request = new IndexRequest("blog").type("doc");
        // 规则 put /user/_doc/1
        request.id("1");
        request.timeout(TimeValue.timeValueSeconds(101L));
        request.timeout("1s");
        // 将我们的数据放入请求 json
        request.source(gson.toJson(blog), XContentType.JSON);
        // 客户端发送请求 , 获取响应的结果
        IndexResponse indexResponse = client.index(request, RequestOptions.DEFAULT);
        System.out.println(indexResponse.toString());
        // 对应我们命令返回的状态CREATED
        System.out.println(indexResponse.status());
        return indexResponse.toString();
    }

    // 获取文档，判断是否存在 get /blog/doc/1
    public boolean docIsExists() throws IOException {
        GetRequest getRequest = new GetRequest("blog","doc", "1L");
        // 不获取返回的 _source 的上下文了
        getRequest.fetchSourceContext(new FetchSourceContext(false));
        getRequest.storedFields("_none_");
        return !client.exists(getRequest, RequestOptions.DEFAULT);

    }

    // 获得文档的信息
    @Test
    void testGetDocument() throws IOException {
        GetRequest getRequest = new GetRequest("blog", "doc","101L");
        GetResponse getResponse = client.get(getRequest, RequestOptions.DEFAULT);
        System.out.println(getResponse.getSourceAsString());
        System.out.println(getResponse);
    }

    // 更新文档的信息
    @Test
    void testUpdateRequest() throws IOException {
        UpdateRequest updateRequest = new UpdateRequest("blog", "doc","101L");
        updateRequest.timeout("1s");
        Blog blog=new Blog(100L,"java从入门到转行");
        updateRequest.doc(gson.toJson(blog), XContentType.JSON);
        UpdateResponse updateResponse = client.update(updateRequest, RequestOptions.DEFAULT);
        System.out.println(updateResponse.status());
    }

    // 删除文档记录
    @Test
    void testDeleteRequest() throws IOException {
        DeleteRequest request = new DeleteRequest("blog", "doc","101L");
        request.timeout("1s");
        DeleteResponse deleteResponse = client.delete(request, RequestOptions.DEFAULT);
        System.out.println(deleteResponse.status());
    }

    //查询所有
    public List<Blog> searchAll() throws IOException {
        List<Blog> blogs = new ArrayList<>();

        SearchRequest searchRequest = new SearchRequest("blog");
        // 构建搜索条件
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        sourceBuilder.highlighter();
        MatchAllQueryBuilder matchAllQueryBuilder = QueryBuilders.matchAllQuery();
        sourceBuilder.query(matchAllQueryBuilder);
        sourceBuilder.timeout(new TimeValue(60, TimeUnit.SECONDS));
        searchRequest.source(sourceBuilder);
        SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        System.out.println(gson.toJson(searchResponse.getHits().getAt(0).getSourceAsMap()));
        System.out.println("=================================");
        //解析结果
        for (SearchHit documentFields : searchResponse.getHits().getHits()) {
            //map转json
            String blogJson = gson.toJson(documentFields.getSourceAsMap());
            //json转实体类
            Blog blog = gson.fromJson(blogJson, Blog.class);
            blogs.add(blog);
        }
        System.out.println(gson.toJson(blogs));
        //return searchResponse.getHits().getCollapseValues();
        return null;
    }


    //精准查询，不分词，为空
    public List<Blog> search(String keyword) throws IOException {
        List<Blog> blogs = new ArrayList<>();

        SearchRequest searchRequest = new SearchRequest("blog");
        // 构建搜索条件
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        sourceBuilder.highlighter();
        //有bug
        TermQueryBuilder termQueryBuilder = QueryBuilders.termQuery("content", keyword);
        sourceBuilder.query(termQueryBuilder);
        sourceBuilder.timeout(new TimeValue(60, TimeUnit.SECONDS));
        searchRequest.source(sourceBuilder);
        SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        //System.out.println(gson.toJson(searchResponse.getHits().getAt(0).getSourceAsMap()));
        System.out.println("=================================");
        //解析结果
        for (SearchHit documentFields : searchResponse.getHits().getHits()) {
            //map转json
            String blogJson = gson.toJson(documentFields.getSourceAsMap());
            //json转实体类
            Blog blog = gson.fromJson(blogJson, Blog.class);
            blogs.add(blog);
        }
        System.out.println(gson.toJson(blogs));
        //return searchResponse.getHits().getCollapseValues();
        return null;
    }

    //分词查询
    public List<Blog> searchPhrase(String keyword) throws IOException {
        List<Blog> blogs = new ArrayList<>();
        // 构建搜索条件
        SearchRequest searchRequest = new SearchRequest("blog");
        MatchQueryBuilder matchQueryBuilder = QueryBuilders.matchQuery("title", keyword);
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        //分页
        sourceBuilder.from(0);
        sourceBuilder.size(5);
        //高亮配置
        HighlightBuilder highlightBuilder=new HighlightBuilder();
        highlightBuilder.field("title");
        highlightBuilder.preTags("<span style='color:red;'>");
        highlightBuilder.postTags("</span>");
        highlightBuilder.requireFieldMatch(false);//关闭多个相同词条都高亮

        sourceBuilder.highlighter(highlightBuilder);
        sourceBuilder.query(matchQueryBuilder);
        sourceBuilder.timeout(new TimeValue(60, TimeUnit.SECONDS));
        searchRequest.source(sourceBuilder);
        //执行查询，返回结果
        SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        System.out.println(gson.toJson(searchResponse.getHits().getAt(0).getSourceAsMap()));
        System.out.println("=================================");
        //解析结果
        for (SearchHit documentFields : searchResponse.getHits().getHits()) {
            //查询的源数据
            Map<String, Object> sourceAsMap = documentFields.getSourceAsMap();
            //获取高亮字段
            Map<String, HighlightField> highlightFields = documentFields.getHighlightFields();
            //解析高亮字段
            HighlightField titile = highlightFields.get("title");
            //高亮字段替换源数据
            if (titile!=null){
                Text[] fragments = titile.fragments();
                String newTitle="";
                for (Text text : fragments) {
                    newTitle += text;
                }
                sourceAsMap.put("title",newTitle);//替换
                System.out.println(newTitle);
            }

            //map转json
            String blogJson = gson.toJson(sourceAsMap);
            //json转实体类
            Blog blog = gson.fromJson(blogJson, Blog.class);
            blogs.add(blog);
        }
        return blogs;
    }

    public boolean importAll() throws IOException {
        List<Blog> blogList = blogMapper.findAll();

        BulkRequest bulkRequest = new BulkRequest();
        bulkRequest.timeout("10s");

        for (int i = 0; i < blogList.size(); i++) {
            // 批量更新和批量删除，就在这里修改对应的请求就可以了，index request[索引，类型，文档，字段]
            bulkRequest.add(
                    new IndexRequest("blog")
                            .id("" + (i + 1))
                            .type("doc")
                            .source(gson.toJson(blogList.get(i)), XContentType.JSON));
        }
        BulkResponse bulkResponse = client.bulk(bulkRequest, RequestOptions.DEFAULT);
        return !(bulkResponse.hasFailures());
    }
}
*/
