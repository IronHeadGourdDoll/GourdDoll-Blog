package com.gourddoll.blog.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gourddoll.blog.mapper.BgFolloweeMapper;
import com.gourddoll.blog.domain.BgFollowee;
import com.gourddoll.blog.service.IBgFolloweeService;

/**
 * 关注管理Service业务层处理
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
@Service
public class BgFolloweeServiceImpl implements IBgFolloweeService 
{
    @Autowired
    private BgFolloweeMapper bgFolloweeMapper;

    /**
     * 查询关注管理
     * 
     * @param followeeId 关注管理ID
     * @return 关注管理
     */
    @Override
    public BgFollowee selectBgFolloweeById(Long followeeId)
    {
        return bgFolloweeMapper.selectBgFolloweeById(followeeId);
    }

    /**
     * 查询关注管理列表
     * 
     * @param bgFollowee 关注管理
     * @return 关注管理
     */
    @Override
    public List<BgFollowee> selectBgFolloweeList(BgFollowee bgFollowee)
    {
        return bgFolloweeMapper.selectBgFolloweeList(bgFollowee);
    }

    /**
     * 新增关注管理
     * 
     * @param bgFollowee 关注管理
     * @return 结果
     */
    @Override
    public int insertBgFollowee(BgFollowee bgFollowee)
    {
        return bgFolloweeMapper.insertBgFollowee(bgFollowee);
    }

    /**
     * 修改关注管理
     * 
     * @param bgFollowee 关注管理
     * @return 结果
     */
    @Override
    public int updateBgFollowee(BgFollowee bgFollowee)
    {
        return bgFolloweeMapper.updateBgFollowee(bgFollowee);
    }

    /**
     * 批量删除关注管理
     * 
     * @param followeeIds 需要删除的关注管理ID
     * @return 结果
     */
    @Override
    public int deleteBgFolloweeByIds(Long[] followeeIds)
    {
        return bgFolloweeMapper.deleteBgFolloweeByIds(followeeIds);
    }

    /**
     * 删除关注管理信息
     * 
     * @param followeeId 关注管理ID
     * @return 结果
     */
    @Override
    public int deleteBgFolloweeById(Long followeeId)
    {
        return bgFolloweeMapper.deleteBgFolloweeById(followeeId);
    }
}
