package io.guangsoft.media.entity;

import cn.afterturn.easypoi.excel.annotation.Excel;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;


@Data
@TableName("sys_user")
public class User extends DataEntity<String> {

	/**
	 * 是否锁定（1：正常；-1：删除；0：锁定；）
	 */
	public static final String STATUS_DELETE = "-1";
	public static final String STATUS_LOCKED = "0";
	public static final String STATUS_NORMAL = "1";

	/** id */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	// 姓名
	@Excel(name = "用户名", orderNum = "1")
	private String username;
	// 用户名
	@Excel(name = "姓名", orderNum = "0")
	private String realname;
	// 头像
	private String portrait;
	// 密码
	private String password;
	// 盐
	private String salt;
	// 邮件
	@Excel(name = "邮件", orderNum = "3", width = 20.0D)
	private String email;
	// 联系电话
	@Excel(name = "联系电话", orderNum = "2", width = 20.0D )
	private String phone;
	public void setDefault(){
		this.status = STATUS_NORMAL;
	}
	/**
	 * 系统用户的状态
	 */
	private String status = STATUS_NORMAL;

}
