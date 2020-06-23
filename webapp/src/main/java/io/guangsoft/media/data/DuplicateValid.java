package io.guangsoft.media.data;

import lombok.Data;

@Data
public class DuplicateValid implements java.io.Serializable {

	/**
	 * 字段名
	 */
	private String name;

	/**
	 * 字段值
	 */
	private String param;

	/**
	 * 字段名
	 */
	private String extendName;

	/**
	 * 字段值
	 */
	private String extendParam;
	/**
	 * 查询方式
	 */
	private String queryType;
	/**
	 * 查询的DATA
	 */
	private String queryData;

	private String errorMsg;

}