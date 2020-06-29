package io.guangsoft.media.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import io.guangsoft.common.query.data.Queryable;
import io.guangsoft.media.entity.TreeNode;

import java.io.Serializable;
import java.util.List;

public interface ITreeCommonService<T extends Serializable & TreeNode<ID>, ID extends Serializable>
		extends ICommonService<T> {
	public List<T> selectTreeList(Wrapper<T> wrapper);
	public List<T> selectTreeList(Queryable queryable, Wrapper<T> wrapper);
}