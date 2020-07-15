package io.guangsoft.media.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sys_dict")
public class Dict extends DataEntity<String> {

	/** 主键 */
	@TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
	/** 分组ID */
	@TableField(value = "gid")
	private String gid;
	/** 键值名称 */
	@TableField(value = "label")
	private String label;
	/** 值 */
	@TableField(value = "value")
	private String value;
	/** 描述 */
	@TableField(value = "remarks")
	private String remarks;
	/** 排序 */
	@TableField(value = "sort")
	private Integer sort;
	/** 分组code */
	@TableField(exist = false)
	private String code;

}
