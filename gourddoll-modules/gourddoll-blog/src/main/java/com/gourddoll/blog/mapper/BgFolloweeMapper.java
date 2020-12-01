package com.gourddoll.blog.mapper;

import java.util.List;
import com.gourddoll.blog.domain.BgFollowee;

/**
 * 关注管理Mapper接口
 * 
 * @author gourddoll
 * @date 2020-11-28
 */
public interface BgFolloweeMapper 
{
    /**
     * 查询关注管理
     * 
     * @param followeeId 关注管理ID
     * @return 关注管理
     */
    public BgFollowee selectBgFolloweeById(Long followeeId);

    /**
     * 查询关注管理列表
     * 
     * @param bgFollowee 关注管理
     * @return 关注管理集合
     */
    public List<BgFollowee> selectBgFolloweeList(BgFollowee bgFollowee);

    /**
     * 新增关注管理
     * 
     * @param bgFollowee 关注管理
     * @return 结果
     */
    public int insertBgFollowee(BgFollowee bgFollowee);

    /**
     * 修改关注管理
     * 
     * @param bgFollowee 关注管理
     * @return 结果
     */
    public int updateBgFollowee(BgFollowee bgFollowee);

    /**
     * 删除关注管理
     * 
     * @param followeeId 关注管理ID
     * @return 结果
     */
    public int deleteBgFolloweeById(Long followeeId);

    /**
     * 批量删除关注管理
     * 
     * @param followeeIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteBgFolloweeByIds(Long[] followeeIds);
}
