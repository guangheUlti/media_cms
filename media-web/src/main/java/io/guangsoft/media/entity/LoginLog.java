package io.guangsoft.media.entity;

import cn.afterturn.easypoi.excel.annotation.Excel;
import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@TableName("sys_login_log")
public class LoginLog {

    /**访问ID*/
    @TableId(value = "id", type = IdType.ASSIGN_UUID)
	private String id;
    /**登录账号*/
	@Excel(name = "登录账号", orderNum = "0",width = 15)
    @TableField(value = "login_name")
	@ApiModelProperty("登录账号")
	private String loginName;
    /**登录IP地址*/
    @TableField(value = "login_ip")
	@Excel(name = "登录IP", orderNum = "1",width = 20)
	@ApiModelProperty("登录IP")
	private String loginIp;
    /**登录地点*/
	@Excel(name = "登录地点", orderNum = "2")
    @TableField(value = "login_location")
	@ApiModelProperty("登录地点")
	private String loginLocation;
    /**浏览器类型*/
	@Excel(name = "浏览器类型", orderNum = "3")
    @TableField(value = "browser")
	@ApiModelProperty("浏览器类型")
	private String browser;
    /**操作系统*/
	@Excel(name = "操作系统", orderNum = "4",width = 15)
    @TableField(value = "os")
	@ApiModelProperty("操作系统")
	private String os;
    /**登录状态（1成功 -1失败）*/
	@Excel(name = "操作系统",replace= {"成功_1", "失败_-1", "退出_0"}, orderNum = "5")
    @TableField(value = "status")
	@ApiModelProperty("操作系统")
	private String status;
    /**提示消息*/
	@Excel(name = "提示消息", orderNum = "6",width = 20)
	@ApiModelProperty("提示消息")
    @TableField(value = "msg")
	private String msg;
    /**访问时间*/
	@Excel(name = "操作时间", orderNum = "7",format="yyyy-MM-dd HH:mm:ss",width = 30)
    @TableField(value = "login_time")
	@ApiModelProperty("操作时间")
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date loginTime;
	
}