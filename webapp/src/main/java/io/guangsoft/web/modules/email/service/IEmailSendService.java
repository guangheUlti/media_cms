package io.guangsoft.web.modules.email.service;

import java.util.Map;

/**
*/
public interface IEmailSendService {
    void send(String email, String code, Map<String, Object> datas);

    void send(String[] emails, String code, Map<String, Object> datas);
}