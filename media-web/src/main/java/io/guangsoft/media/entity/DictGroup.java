package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_dict_group")
public class DictGroup extends DataEntity {

	/** 主键 */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	/** 分组名称 */
	@TableField(value = "name")
	private String name;
	/** 备注 */
	@TableField(value = "remarks")
	private String remarks;
	/** 分组编码 */
	@TableField(value = "code")
	private String code;

}
