package io.guangsoft.media.web.modules.sys.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.media.web.modules.sys.entity.DataSource;
import io.guangsoft.media.web.modules.sys.mapper.DataSourceMapper;
import io.guangsoft.media.web.modules.sys.service.IDataSourceService;
import io.guangsoft.web.modules.sys.entity.DataSource;
import io.guangsoft.web.modules.sys.mapper.DataSourceMapper;
import io.guangsoft.web.modules.sys.service.IDataSourceService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**   
 * @date 2017-05-10 12:01:57
 */
@Transactional
@Service("dataSourceService")
public class DataSourceServiceImpl  extends CommonServiceImpl<DataSourceMapper,DataSource> implements IDataSourceService {

}
