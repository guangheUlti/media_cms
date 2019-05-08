package io.guangsoft.common.crm.service;

import io.guangsoft.common.mvc.entity.tree.TreeNode;
import io.guangsoft.common.query.data.Queryable;
import com.baomidou.mybatisplus.mapper.Wrapper;

import java.io.Serializable;
import java.util.List;

public interface ITreeCommonService<T extends Serializable & TreeNode<ID>, ID extends Serializable>
		extends ICommonService<T> {
	public List<T> selectTreeList(Wrapper<T> wrapper);
	public List<T> selectTreeList(Queryable queryable, Wrapper<T> wrapper);
}