package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_user_organization")
public class UserOrganization extends AbstractEntity<String> {

	/** 编号 */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	/** 用户编号 */
	private String userId;
	private User user;
	/** 部门编号 */
	private String organizationId;
	private Organization organization;

}
