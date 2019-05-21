package io.guangsoft.web.modules.sys.service;


import java.util.List;

import io.guangsoft.common.crm.service.ICommonService;
import io.guangsoft.web.modules.sys.entity.Dict;

/**
 * @date 2017-02-09 09:05:29
 */
public interface IDictService extends ICommonService<Dict> {
    public List<Dict> selectDictList();
}
