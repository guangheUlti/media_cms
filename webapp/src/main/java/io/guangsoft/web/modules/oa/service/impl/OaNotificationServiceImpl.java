package io.guangsoft.web.modules.oa.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.web.modules.oa.entity.OaNotification;
import io.guangsoft.web.modules.oa.mapper.OaNotificationMapper;
import io.guangsoft.web.modules.oa.service.IOaNotificationService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @date 2017-06-10 17:15:17
 */
@Transactional
@Service("oaNotificationService")
public class OaNotificationServiceImpl  extends CommonServiceImpl<OaNotificationMapper,OaNotification> implements  IOaNotificationService {

}
