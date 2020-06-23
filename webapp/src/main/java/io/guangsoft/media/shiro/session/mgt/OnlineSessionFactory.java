/**
 * Copyright (c) 2005-2012 https://github.com/zhangkaitao
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package io.guangsoft.media.shiro.session.mgt;

import io.guangsoft.media.entity.UserOnline;
import io.guangsoft.web.modules.sys.entity.UserOnline;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.SessionContext;
import org.apache.shiro.session.mgt.SessionFactory;
import org.apache.shiro.web.session.mgt.WebSessionContext;

import io.guangsoft.common.utils.IpUtils;

import javax.servlet.http.HttpServletRequest;

/**
 */
public class OnlineSessionFactory implements SessionFactory {

	@Override
	public Session createSession(SessionContext initData) {
		OnlineSession session = new OnlineSession();
		if (initData != null && initData instanceof WebSessionContext) {
			WebSessionContext sessionContext = (WebSessionContext) initData;
			HttpServletRequest request = (HttpServletRequest) sessionContext.getServletRequest();
			if (request != null) {
				session.setHost(IpUtils.getIpAddr(request));
				session.setUserAgent(request.getHeader("User-Agent"));

				//session.setSystemHost(request.getLocalAddr() + ":" + request.getLocalPort());
			}
		}
		return session;
	}

	public Session createSession(UserOnline userOnline) {
		return userOnline.getSession();
	}
}
