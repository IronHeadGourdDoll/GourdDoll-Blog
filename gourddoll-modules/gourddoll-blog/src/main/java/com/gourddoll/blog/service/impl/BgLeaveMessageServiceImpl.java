package com.gourddoll.blog.service.impl;

import java.util.List;
import com.gourddoll.common.core.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgLeaveMessageMapper;
import com.gourddoll.blog.domain.BgLeaveMessage;
import com.gourddoll.blog.service.IBgLeaveMessageService;

/**
 * 留言管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgLeaveMessageServiceImpl implements IBgLeaveMessageService 
{
    @Autowired
    private BgLeaveMessageMapper bgLeaveMessageMapper;

    /**
     * 查询留言管理
     * 
     * @param id 留言管理ID
     * @return 留言管理
     */
    @Override
    public BgLeaveMessage selectBgLeaveMessageById(Long id)
    {
        return bgLeaveMessageMapper.selectBgLeaveMessageById(id);
    }

    /**
     * 查询留言管理列表
     * 
     * @param bgLeaveMessage 留言管理
     * @return 留言管理
     */
    @Override
    public List<BgLeaveMessage> selectBgLeaveMessageList(BgLeaveMessage bgLeaveMessage)
    {
        return bgLeaveMessageMapper.selectBgLeaveMessageList(bgLeaveMessage);
    }

    /**
     * 新增留言管理
     * 
     * @param bgLeaveMessage 留言管理
     * @return 结果
     */
    @Override
    public int insertBgLeaveMessage(BgLeaveMessage bgLeaveMessage)
    {
        bgLeaveMessage.setCreateTime(DateUtils.getNowDate());
        return bgLeaveMessageMapper.insertBgLeaveMessage(bgLeaveMessage);
    }

    /**
     * 修改留言管理
     * 
     * @param bgLeaveMessage 留言管理
     * @return 结果
     */
    @Override
    public int updateBgLeaveMessage(BgLeaveMessage bgLeaveMessage)
    {
        return bgLeaveMessageMapper.updateBgLeaveMessage(bgLeaveMessage);
    }

    /**
     * 批量删除留言管理
     * 
     * @param ids 需要删除的留言管理ID
     * @return 结果
     */
    @Override
    public int deleteBgLeaveMessageByIds(Long[] ids)
    {
        return bgLeaveMessageMapper.deleteBgLeaveMessageByIds(ids);
    }

    /**
     * 删除留言管理信息
     * 
     * @param id 留言管理ID
     * @return 结果
     */
    @Override
    public int deleteBgLeaveMessageById(Long id)
    {
        return bgLeaveMessageMapper.deleteBgLeaveMessageById(id);
    }
}
