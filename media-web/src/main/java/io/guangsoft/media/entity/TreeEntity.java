package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * 树抽象实体基类
 */
public abstract class TreeEntity<T> {
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id; // 编号
	@TableField(value = "name")
	private String name; // 资源名称
	@TableField(value = "parent_id", whereStrategy = FieldStrategy.IGNORED)
	private String parentId; // 父编号
	@TableField(value = "parent_ids", whereStrategy = FieldStrategy.IGNORED)
	private String parentIds; // 父编号列表

	@TableField(exist = false)
	private Boolean expanded = Boolean.FALSE;
	@TableField(exist = false)

	private Boolean loaded = Boolean.TRUE;
	@TableField(exist = false)
	private T parent;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 是否有叶子节点
	 */
	@TableField(exist = false)
	private boolean hasChildren;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}

	public boolean isRoot() {
		if (getParentId() == null || getParentId().equals("0") || getParentId().equals("")) {
			return true;
		}
		return false;
	}

	public boolean isHasChildren() {
		return hasChildren;
	}

	public void setHasChildren(boolean hasChildren) {
		this.hasChildren = hasChildren;
	}

	public Long getLevel() {
		if (parentIds == null) {
			return (long) 0;
		}
		String[] parentIdArr = parentIds.split("/");
		List<String> idsList = new ArrayList<>();
		for (String id : parentIdArr) {
			if (!StringUtils.isEmpty(id)) {
				idsList.add(id);
			}
		}
		return (long) (idsList.size());
	}

	public Boolean isLeaf() {
		if (isHasChildren()) {
			return Boolean.FALSE;
		}

		return Boolean.TRUE;
	}

	public String makeSelfAsNewParentIds() {
		if (StringUtils.isEmpty(getParentIds())) {
			return getId() + getSeparator();
		}
		return getParentIds() + getId() + getSeparator();
	}

	public String getSeparator() {
		return "/";
	}

	public void setExpanded(Boolean expanded) {
		this.expanded = expanded;
	}

	public Boolean getExpanded() {
		return expanded;
	}

	public void setLoaded(Boolean loaded) {
		this.loaded = loaded;
	}

	public Boolean getLoaded() {
		return loaded;
	}

	public T getParent() {
		return parent;
	}

	public void setParent(T parent) {
		this.parent = parent;
	}

	public String[] makeTags() {
		return new String[0];
	}
}
