package io.guangsoft.common.utils;

import io.guangsoft.common.utils.fastjson.FastjsonPropertyPreFilter;
import io.guangsoft.common.utils.fastjson.FastjsonUnXssFilter;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializeFilter;

/**
 * All rights Reserved, Designed By www.dataact.cn
 * @version V1.0
 * @description: 打印json
 * @author: guanghe
 */
public class FastJsonUtils {

    public static void print(Object object,Class<?> clazz,String includesProperties){
        FastjsonPropertyPreFilter fastjsonPropertyPreFilter = new FastjsonPropertyPreFilter(clazz,includesProperties);
        FastjsonUnXssFilter fastjsonUnXssFilter = new FastjsonUnXssFilter();
        SerializeFilter[] filters={fastjsonPropertyPreFilter,fastjsonUnXssFilter};
        String content = JSON.toJSONString(object,filters);
        StringUtils.printJson(ServletUtils.getResponse(),content);
    }

    public static void print(Object object,String includesProperties){
        FastjsonPropertyPreFilter fastjsonPropertyPreFilter = new FastjsonPropertyPreFilter(object.getClass(),includesProperties);
        FastjsonUnXssFilter fastjsonUnXssFilter = new FastjsonUnXssFilter();
        SerializeFilter[] filters={fastjsonPropertyPreFilter,fastjsonUnXssFilter};
        String content = JSON.toJSONString(object,filters);
        StringUtils.printJson(ServletUtils.getResponse(),content);
    }

    public static void print(Object object){
        FastjsonUnXssFilter fastjsonUnXssFilter = new FastjsonUnXssFilter();
        String content = JSON.toJSONString(object,fastjsonUnXssFilter);
        StringUtils.printJson(ServletUtils.getResponse(),content);
    }
}
