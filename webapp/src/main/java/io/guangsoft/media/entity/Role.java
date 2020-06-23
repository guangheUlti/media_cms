package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_role")
public class Role extends DataEntity<String> {
	@TableId(value = "id", type = IdType.UUID)
	private String id;
	@TableField(value = "name")
	private String name;// 角色名称
	@TableField(value = "code")
	private String code;// 角色编码
	@TableField(value = "is_sys")
	private String isSys;// 是否系统数据
	@TableField(value = "usable")
	private String usable;// 是否可用

}
