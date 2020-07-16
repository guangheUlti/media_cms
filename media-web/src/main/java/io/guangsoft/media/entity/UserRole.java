package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_user_role")
public class UserRole {

	/** 编号 */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	/** 用户编号 */
    @TableField(value="user_id")
	private String userId;
	private User user;
	/** 角色编号 */
    @TableField(value="role_id")
	private String roleId;
	private Role role;

}
