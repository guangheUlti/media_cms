package io.guangsoft.web.modules.oss.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.web.modules.oss.entity.Attachment;
import io.guangsoft.web.modules.oss.mapper.AttachmentMapper;
import io.guangsoft.web.modules.oss.service.IAttachmentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
*/
@Transactional
@Service("attachmentService")
public class AttachmentServiceImpl  extends CommonServiceImpl<AttachmentMapper,Attachment> implements IAttachmentService {

}