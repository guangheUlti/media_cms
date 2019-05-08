package io.guangsoft.common.utils;

import org.apache.commons.io.FilenameUtils;

/**
 * @description: 判断判断文件
 * @author: guanghe
 * @version V1.0
 */
public class ImagesUtils {

	private static final String[] IMAGES_SUFFIXES = { "bmp", "jpg", "jpeg", "gif", "png", "tiff" };

	/**
	 * 是否是图片附件
	 * @param filename
	 * @return
	 */
	public static boolean isImage(String filename) {
		if (filename == null || filename.trim().length() == 0)
			return false;
		return ArrayUtils.contains(IMAGES_SUFFIXES, FilenameUtils.getExtension(filename).toLowerCase());
	}

}
