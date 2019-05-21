package io.guangsoft.web.config;


import io.guangsoft.web.modules.sys.service.IDictService;
import io.guangsoft.beetl.tags.dict.Dict;
import io.guangsoft.beetl.tags.dict.InitDictable;
import io.guangsoft.common.utils.SpringContextHolder;
import com.google.common.collect.Lists;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 */

@Configuration
public class DictConfig implements InitDictable {

    /**
     * 数据字典初始化
     * @return
     */
    @Override
    public Map<String, List<Dict>> initDict() {
        Map<String, List<Dict>> dictMap = new HashMap<String, List<Dict>>();
        IDictService dictService= SpringContextHolder.getBean(IDictService.class);
        for (io.guangsoft.web.modules.sys.entity.Dict dict : dictService.selectDictList()) {
                List<Dict> dictList = dictMap.get(dict.getCode());
                if (dictList != null) {
                    dictList.add(new Dict(dict.getLabel(), dict.getValue()));
                } else {
                    dictMap.put(dict.getCode(),
                            Lists.newArrayList(new Dict(dict.getLabel(), dict.getValue())));
                }
        }
        return dictMap;
    }
}
