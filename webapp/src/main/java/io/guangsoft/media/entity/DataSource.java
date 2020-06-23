package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_data_source")
public class DataSource extends DataEntity<String> {

	/** 索引关键字 */
	private String dbKey;
	/** 驱动 */
	private String driverClass;
	/** 数据库名称 */
	private String dbName;
	/** 密码 */
	private String dbPassword;
	/** 数据库类型 */
	private String dbType;
	/** 描述 */
	private String description;
	/** id */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	/** URL */
	private String url;
	/** 帐号 */
	private String dbUser;

}
