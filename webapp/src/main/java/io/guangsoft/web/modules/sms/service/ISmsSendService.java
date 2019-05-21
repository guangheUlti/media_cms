package io.guangsoft.web.modules.sms.service;


import java.util.Map;

/**
 * @date 2018-09-14 10:50:52
 */
public interface ISmsSendService {

	void send(String phone, String code, Map<String, Object> datas);

	void send(String[] phones, String code, Map<String, Object> datas);

}
