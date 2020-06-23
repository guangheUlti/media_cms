package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_role_menu")
public class RoleMenu implements java.io.Serializable {

	/** 编号 */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	/** 菜单编号 */
	private String menuId;
	/** 角色编号 */
	private String roleId;

}
