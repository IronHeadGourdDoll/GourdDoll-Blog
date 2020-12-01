package com.gourddoll.blog.service;

import java.util.List;
import com.gourddoll.blog.domain.BgLeaveMessage;

/**
 * 留言管理Service接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface IBgLeaveMessageService 
{
    /**
     * 查询留言管理
     * 
     * @param id 留言管理ID
     * @return 留言管理
     */
    public BgLeaveMessage selectBgLeaveMessageById(Long id);

    /**
     * 查询留言管理列表
     * 
     * @param bgLeaveMessage 留言管理
     * @return 留言管理集合
     */
    public List<BgLeaveMessage> selectBgLeaveMessageList(BgLeaveMessage bgLeaveMessage);

    /**
     * 新增留言管理
     * 
     * @param bgLeaveMessage 留言管理
     * @return 结果
     */
    public int insertBgLeaveMessage(BgLeaveMessage bgLeaveMessage);

    /**
     * 修改留言管理
     * 
     * @param bgLeaveMessage 留言管理
     * @return 结果
     */
    public int updateBgLeaveMessage(BgLeaveMessage bgLeaveMessage);

    /**
     * 批量删除留言管理
     * 
     * @param ids 需要删除的留言管理ID
     * @return 结果
     */
    public int deleteBgLeaveMessageByIds(Long[] ids);

    /**
     * 删除留言管理信息
     * 
     * @param id 留言管理ID
     * @return 结果
     */
    public int deleteBgLeaveMessageById(Long id);
}
