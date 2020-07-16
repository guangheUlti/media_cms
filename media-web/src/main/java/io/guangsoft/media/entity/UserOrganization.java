package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_user_organization")
public class UserOrganization {

	/** 编号 */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	/** 用户编号 */
    @TableField(value="user_id")
	private String userId;
	private User user;
	/** 部门编号 */
    @TableField(value="organization_id")
	private String organizationId;
	private Organization organization;

}
