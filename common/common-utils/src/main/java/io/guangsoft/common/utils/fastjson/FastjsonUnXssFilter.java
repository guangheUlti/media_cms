package io.guangsoft.common.utils.fastjson;

import com.alibaba.fastjson.serializer.ValueFilter;
import org.apache.commons.lang3.StringEscapeUtils;

/**
 * @version V1.0
 * @description: Fastjson中，对返回值的处理
 * @author: guanghe
 */
public class FastjsonUnXssFilter implements ValueFilter {

    @Override
    public Object process(Object object, String name, Object value) {
        // 判断如果是字符串反解析
        if (value instanceof  String && value != null){
            return StringEscapeUtils.unescapeHtml4(value+"");
        }
        return value;
    }
}
