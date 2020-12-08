package com.gourddoll.common.search.service;

import com.google.gson.Gson;
import com.gourddoll.common.core.utils.reflect.ReflectUtils;
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
import org.elasticsearch.index.query.MatchAllQueryBuilder;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.TermQueryBuilder;
import org.elasticsearch.rest.RestStatus;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.fetch.subphase.FetchSourceContext;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightField;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.lang.reflect.Type;
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
@Component
public class ElasticSearchService {

    @Autowired
    @Qualifier("client")//自己配置的es
    private RestHighLevelClient client;

    Gson gson = new Gson();

    /**
    * 创建索引
    *
    * @Param: [index]
    * @return: void
    */
    public void createIndex(String index) throws IOException {
        CreateIndexRequest request = new CreateIndexRequest(index);
        CreateIndexResponse createIndexResponse = client.indices().create(request, RequestOptions.DEFAULT);
        System.out.println(createIndexResponse);
    }

    /**
    * 查看索引是否存在
    *
    * @Param: [index, id]
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
    * @Param: [index]
    * @return: void
    */
    public void deleteIndex(String index) throws IOException {
        DeleteIndexRequest request = new DeleteIndexRequest(index);
        AcknowledgedResponse delete = client.indices().delete(request, RequestOptions.DEFAULT);
        System.out.println(delete.isAcknowledged());
    }

    /**
    * 添加文档
    *
    * @Param: [index, type, t]
    * @return: java.lang.String
    */
    public <T> String addDocument(String index, String type, T t) throws IOException {
        IndexRequest request = new IndexRequest(index).type(type);
        // 将保存的数据放入请求 json
        request.source(gson.toJson(t), XContentType.JSON);
        // 客户端发送请求 , 获取响应的结果
        IndexResponse indexResponse = client.index(request, RequestOptions.DEFAULT);
        System.out.println(indexResponse.toString());
        // 对应我们命令返回的状态CREATED
        System.out.println(indexResponse.status());
        return indexResponse.toString();
    }


    /**
    * 判断文档是否存在
    *
    * @Param: [index, type, id]
    * @return: boolean
    */
    public boolean existDoc(String index, String type, String id) throws IOException {
        GetRequest getRequest = new GetRequest(index, type, id);
        // 不获取返回的 _source 的上下文了
        getRequest.fetchSourceContext(new FetchSourceContext(false));
        getRequest.storedFields("_none_");
        return !client.exists(getRequest, RequestOptions.DEFAULT);
    }

    /**
    * 获得文档的信息
    *
    * @Param: [index, type, id]
    * @return: org.elasticsearch.action.get.GetResponse
    */
    public GetResponse getReponse(String index, String type, String id) throws IOException {
        GetRequest getRequest = new GetRequest(index, type, id);
        if (existDoc(index, type, id)){
            return client.get(getRequest, RequestOptions.DEFAULT);
        }else {
            return null;
        }
    }

    /**
    * 更新文档的信息
    *
    * @Param: [index, type, id, newData]
    * @return: org.elasticsearch.rest.RestStatus
    */
    public <T> RestStatus updateRequest(String index, String type, String id, T newData) throws IOException {
        UpdateRequest updateRequest = new UpdateRequest(index, type, id);
        updateRequest.doc(gson.toJson(newData), XContentType.JSON);
        UpdateResponse updateResponse = client.update(updateRequest, RequestOptions.DEFAULT);
        System.out.println(updateResponse.status());
        return updateResponse.status();
    }

    /**
    * 删除文档记录
    *
    * @Param: [index, type, id]
    * @return: org.elasticsearch.rest.RestStatus
    */
    public RestStatus deleteRequest(String index, String type, String id) throws IOException {
        DeleteRequest request = new DeleteRequest(index, type, id);
        DeleteResponse deleteResponse = client.delete(request, RequestOptions.DEFAULT);
        return deleteResponse.status();
    }

    /**
    * 查询所有
    *
    * @Param: [index, t]
    * @return: java.util.List<java.lang.T>
    */
    public <T> List<T> searchAll(String index,T t) throws IOException {
        List<T> ts = new ArrayList<>();

        SearchRequest searchRequest = new SearchRequest(index);
        // 构建搜索条件
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        sourceBuilder.highlighter();
        MatchAllQueryBuilder matchAllQueryBuilder = QueryBuilders.matchAllQuery();
        sourceBuilder.query(matchAllQueryBuilder);
        sourceBuilder.timeout(new TimeValue(60, TimeUnit.SECONDS));

        searchRequest.source(sourceBuilder);
        SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        //解析结果
        for (SearchHit documentFields : searchResponse.getHits().getHits()) {
            //map转json
            String tJson = gson.toJson(documentFields.getSourceAsMap());
            //json转实体类
            t = gson.fromJson(tJson, (Type) t.getClass());
            ts.add(t);
        }
        //return searchResponse.getHits().getCollapseValues();
        return ts;
    }

    /**
    * 结果为空,TermQueryBuilder精准查询，不分词
    *
    * @Param: [index, column, keyword,T t]
    * @return: java.util.List<Object>
    */
    public <T> List<T> search(String index, String column, String keyword,T t) throws IOException {
        List<T> ts = new ArrayList<>();

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
        //解析结果
        for (SearchHit documentFields : searchResponse.getHits().getHits()) {
            //map转json
            String tJson = gson.toJson(documentFields.getSourceAsMap());
            //json转实体类
            t = gson.fromJson(tJson, (Type) t.getClass());
            ts.add(t);
        }
        //System.out.println(gson.toJson(objects));
        //return searchResponse.getHits().getCollapseValues();
        return ts;
    }

    /**
    * MatchQueryBuilder分词查询
    *
    * @Param: [index, column, keyword, t]
    * @return: java.util.List<T>
    */
    public <T> List<T> searchPhrase(String index, String column, String keyword,T t) throws IOException {
        List<T> ts = new ArrayList<>();
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
        int len = searchResponse.getHits().getHits().length;
        if (len <= 0){
            return null;
        }
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
            //t = gson.fromJson(tJson, ReflectUtils.getClassGenricType(t.getClass()));
            t = gson.fromJson(tJson, (Type) t.getClass());
            ts.add(t);
        }
        return ts;
    }

    /**
    * 导入到elasticsearch数据库
    *
    * @Param: [index,list]
    * @return: boolean
    */
    public <T> boolean importListData(String index, List<T> list) throws IOException {

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
