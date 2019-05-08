package io.guangsoft.common.crm.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import org.apache.ibatis.annotations.Param;

import java.io.Serializable;
import java.util.List;

public interface BaseTreeMapper<T> extends BaseMapper<T> {
	/**
	 * 
	 * @description: 查找主键
	 * @param id
	 * @return
	 * @return: Menu
	 */
	T selectByTreeId(Serializable id);

	/**
	 * 
	 * @description: 查找列表
	 * @param wrapper
	 * @return
	 * @return: List<T>
	 */
	List<T> selectTreeList(@Param("ew") Wrapper<T> wrapper);

	/**
	 * 
	 * @description: 更新ParentIds
	 * @param newParentIds
	 * @param oldParentIds
	 * @return: void
	 */
	void updateSunTreeParentIds(@Param("newParentIds") String newParentIds, @Param("oldParentIds") String oldParentIds);

	/**
	 * 
	 * @description: 查找列表
	 * @param parentIds
	 * @return
	 * @return: List<T>
	 */
	void deleteSunTree(String parentIds);

}