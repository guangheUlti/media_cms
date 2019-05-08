package io.guangsoft.common.query.data;

import com.alibaba.fastjson.serializer.SerializeFilter;

/**
 * 
 *
 * @description: JSON格式化输出
 * @version V1.0
 */
public interface PropertyPreFilterable {
	
	public SerializeFilter constructFilter(Class<?> clazz);
	
	public void addQueryProperty(String... properties);
	
	public void addIncludeFilter(Class<?> clazz, String... properties);

	public void addExcludeFilter(Class<?> clazz, String... properties);
}
