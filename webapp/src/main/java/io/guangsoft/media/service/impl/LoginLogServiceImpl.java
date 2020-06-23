package io.guangsoft.media.service.impl;

import io.guangsoft.media.entity.LoginLog;
import io.guangsoft.media.dao.LoginLogMapper;
import io.guangsoft.media.service.ILoginLogService;
import io.guangsoft.web.modules.sys.entity.LoginLog;
import io.guangsoft.web.modules.sys.mapper.LoginLogMapper;
import io.guangsoft.web.modules.sys.service.ILoginLogService;
import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
*/
@Transactional
@Service("loginlogService")
public class LoginLogServiceImpl  extends CommonServiceImpl<LoginLogMapper,LoginLog> implements ILoginLogService {

}