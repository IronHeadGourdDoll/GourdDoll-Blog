package com.gourddoll.search.service;

import com.google.gson.Gson;
import org.apache.poi.ss.formula.functions.T;
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

import org.elasticsearch.common.text.Text;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.*;
import org.elasticsearch.rest.RestStatus;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.fetch.subphase.FetchSourceContext;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightField;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;


/**
 * ElasticSearch工具类
 *
 * @author gourddoll
 * @date 2020-3-21
 */
@Service
public class ElasticSearchService {

    @Autowired
    @Qualifier("client")//自己配置的es
    private RestHighLevelClient client;

    Gson gson = new Gson();

    /**
    * 创建索引
    *
    * @Param: [indexName]
    * @return: void
    */
    public void createIndex(String indexName) throws IOException {
        CreateIndexRequest request = new CreateIndexRequest(indexName);
        CreateIndexResponse createIndexResponse = client.indices().create(request, RequestOptions.DEFAULT);
        System.out.println(createIndexResponse);
    }

    /**
    * 查看索引是否存在
    *
    * @Param: [indexName, id]
    * @return: boolean
    */
    public boolean existIndex(String indexName,String id) throws IOException {
        GetRequest getRequest = new GetRequest();
        getRequest.index(indexName).id(id);
        return client.exists(getRequest, RequestOptions.DEFAULT);
    }

    /**
    * 删除索引
    *
    * @Param: [indexName]
    * @return: void
    */
    public void deleteIndex(String indexName) throws IOException {
        DeleteIndexRequest request = new DeleteIndexRequest(indexName);
        AcknowledgedResponse delete = client.indices().delete(request, RequestOptions.DEFAULT);
        System.out.println(delete.isAcknowledged());
    }

    /**
    * 添加文档
    * IndexRequest request = new IndexRequest("blog").type("doc");
    * @Param: [t, request]
    * @return: java.lang.String
    */
    public String addDocument(Object object,IndexRequest request) throws IOException {
        // 将我们的数据放入请求 json
        request.source(gson.toJson(object), XContentType.JSON);
        // 客户端发送请求 , 获取响应的结果
        IndexResponse indexResponse = client.index(request, RequestOptions.DEFAULT);
        System.out.println(indexResponse.toString());
        // 对应我们命令返回的状态CREATED
        System.out.println(indexResponse.status());
        return indexResponse.toString();
    }


    /**
    * 获取文档，判断是否存在 get /blog/doc/1
    * GetRequest getRequest = new GetRequest("blog","doc", "1L");
    * @Param: [getRequest]
    * @return: boolean
    */
    public boolean existDoc(GetRequest getRequest) throws IOException {
        // 不获取返回的 _source 的上下文了
        getRequest.fetchSourceContext(new FetchSourceContext(false));
        getRequest.storedFields("_none_");
        return !client.exists(getRequest, RequestOptions.DEFAULT);
    }

    /**
    * 获得文档的信息
    * GetRequest getRequest = new GetRequest("blog","doc", "1L");
    * @Param: [getRequest]
    * @return: org.elasticsearch.action.get.GetResponse
    */
    public GetResponse getReponse(GetRequest getRequest) throws IOException {
        if (existDoc(getRequest)){
            return client.get(getRequest, RequestOptions.DEFAULT);
        }else {
            return null;
        }
    }

    /**
    * 更新文档的信息
    * UpdateRequest updateRequest = new UpdateRequest("blog", "doc","101L");
    * @Param: [updateRequest, newdata]
    * @return: org.elasticsearch.rest.RestStatus
    */
    public RestStatus updateRequest(UpdateRequest updateRequest, Object newdata) throws IOException {
        updateRequest.doc(gson.toJson(newdata), XContentType.JSON);
        UpdateResponse updateResponse = client.update(updateRequest, RequestOptions.DEFAULT);
        System.out.println(updateResponse.status());
        return updateResponse.status();
    }

    /**
    * 删除文档记录
    * DeleteRequest request = new DeleteRequest("blog", "doc","101L");
    * @Param: [request]
    * @return: org.elasticsearch.rest.RestStatus
    */
    public RestStatus deleteRequest(DeleteRequest request) throws IOException {
        DeleteResponse deleteResponse = client.delete(request, RequestOptions.DEFAULT);
        return deleteResponse.status();
    }

    /**
    * 查询所有
    *
    * @Param: [index]
    * @return: java.util.List<java.lang.T>
    */
    public List<Object> searchAll(String index) throws IOException {
        List<Object> objects = new ArrayList<>();

        SearchRequest searchRequest = new SearchRequest(index);
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
            String tJson = gson.toJson(documentFields.getSourceAsMap());
            //json转实体类
            Object object = gson.fromJson(tJson, T.class);
            objects.add(object);
        }
        //return searchResponse.getHits().getCollapseValues();
        return objects;
    }

    /**
    * 结果为空,TermQueryBuilder精准查询，不分词
    *
    * @Param: [index, column, keyword]
    * @return: java.util.List<Object>
    */
    public List<Object> search(String index, String column, String keyword) throws IOException {
        List<Object> objects = new ArrayList<>();

        SearchRequest searchRequest = new SearchRequest(index);
        // 构建搜索条件
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        sourceBuilder.highlighter();
        //有bug
        TermQueryBuilder termQueryBuilder = QueryBuilders.termQuery(column, keyword);
        sourceBuilder.query(termQueryBuilder);
        sourceBuilder.timeout(new TimeValue(60, TimeUnit.SECONDS));
        searchRequest.source(sourceBuilder);
        SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        //System.out.println(gson.toJson(searchResponse.getHits().getAt(0).getSourceAsMap()));
        System.out.println("=================================");
        //解析结果
        for (SearchHit documentFields : searchResponse.getHits().getHits()) {
            //map转json
            String tJson = gson.toJson(documentFields.getSourceAsMap());
            //json转实体类
            Object object = gson.fromJson(tJson, T.class);
            objects.add(object);
        }
        //System.out.println(gson.toJson(objects));
        //return searchResponse.getHits().getCollapseValues();
        return objects;
    }

    /**
    * MatchQueryBuilder分词查询
    *
    * @Param: [index, column, keyword]
    * @return: java.util.List<T>
    */
    public List<Object> searchPhrase(String index, String column, String keyword) throws IOException {
        List<Object> objects = new ArrayList<>();
        // 构建搜索条件
        SearchRequest searchRequest = new SearchRequest(index);
        MatchQueryBuilder matchQueryBuilder = QueryBuilders.matchQuery(column, keyword);
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        //分页
        sourceBuilder.from(0);
        sourceBuilder.size(10);
        //高亮配置
        HighlightBuilder highlightBuilder=new HighlightBuilder();
        highlightBuilder.field(column);
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
            HighlightField resultHighlight = highlightFields.get(column);
            //高亮字段替换源数据
            if (resultHighlight!=null){
                Text[] fragments = resultHighlight.fragments();
                String newResult="";
                for (Text text : fragments) {
                    newResult += text;
                }
                //替换
                sourceAsMap.put(column,newResult);
            }

            //map转json
            String tJson = gson.toJson(sourceAsMap);
            //json转实体类
            Object object = gson.fromJson(tJson, T.class);
            objects.add(object);
        }
        return objects;
    }

    /**
    * 导入到elasticsearch数据库
    *
    * @Param: [index,list]
    * @return: boolean
    */
    public boolean importListData(String index, List<T> list) throws IOException {

        BulkRequest bulkRequest = new BulkRequest();
        bulkRequest.timeout("10s");

        for (int i = 0; i < list.size(); i++) {
            // 批量更新和批量删除，就在这里修改对应的请求就可以了，index request[索引，类型，文档，字段]
            bulkRequest.add(
                    new IndexRequest(index)
                            .id("" + (i + 1))
                            .type("doc")
                            .source(gson.toJson(list.get(i)), XContentType.JSON));
        }
        BulkResponse bulkResponse = client.bulk(bulkRequest, RequestOptions.DEFAULT);
        return !(bulkResponse.hasFailures());
    }

}
