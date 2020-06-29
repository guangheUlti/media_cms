package io.guangsoft.media.service;


import io.guangsoft.media.entity.Dict;

import java.util.List;

public interface IDictService extends ICommonService<Dict> {
    public List<Dict> selectDictList();
}
