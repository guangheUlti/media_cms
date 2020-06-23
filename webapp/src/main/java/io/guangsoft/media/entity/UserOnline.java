package io.guangsoft.media.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.TableField;
import io.guangsoft.common.utils.SerializationUtils;
import io.guangsoft.media.shiro.session.mgt.OnlineSession;
import lombok.Data;

import java.util.Date;

@Data
public class UserOnline extends DataEntity<String> {

	/**
	 * 用户会话id ===> uid
	 */
	private String id;

	// 当前登录的用户Id
	private String userId;

	private String username;

	/**
	 * 用户主机地址
	 */
	private String host;

	/**
	 * 用户登录时系统IP
	 */
	private String systemHost;

	/**
	 * 用户浏览器类型
	 */
	@TableField(value = "user_agent")
	private String userAgent;

	/**
	 * 在线状态
	 */
	private String status = "on_line";

	/**
	 * session创建时间
	 */
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date startTimestamp;
	/**
	 * session最后访问时间
	 */
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date lastAccessTime;

	/**
	 * 超时时间
	 */
	private Long timeout;

	/**
	 * 备份的当前用户会话
	 */
	private String onlineSession;

	private OnlineSession session;

	public OnlineSession getSession() {
		if (this.session == null) {
			this.session = (OnlineSession) SerializationUtils.deserializeStr(this.onlineSession);
		}
		return this.session;
	}

	public void setSession(OnlineSession session) {
		this.session = session;
		this.onlineSession = SerializationUtils.serializeStr(session);
	}

	public static final UserOnline fromOnlineSession(OnlineSession session) {
		UserOnline online = new UserOnline();
		online.setId(String.valueOf(session.getId()));
		online.setUserId(session.getUserId());
		online.setUsername(session.getUsername());
		online.setStartTimestamp(session.getStartTimestamp());
		online.setLastAccessTime(session.getLastAccessTime());
		online.setTimeout(session.getTimeout());
		online.setHost(session.getHost());
		online.setUserAgent(session.getUserAgent());
		online.setSystemHost(session.getSystemHost());
		online.setSession(session);
		return online;
	}

}
