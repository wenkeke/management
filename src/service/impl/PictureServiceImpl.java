package service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Service;

import service.PictureService;

@Service
public class PictureServiceImpl implements PictureService {

	/*
	 * 处理文件路径
	 */
	@Override
	public String getPathByFileName(String fileName) {
		String suffixName = fileName.substring(fileName.lastIndexOf('.') + 1)
				.toLowerCase();// 得到后缀名
		// 图片格式jpg .jpeg .gif .png .bmp
		if (suffixName.contains("jpg") || suffixName.contains("jpeg")
				|| suffixName.contains("gif") || suffixName.contains("png")
				|| suffixName.contains("bmp")) {
			// 判断应属于声明文件，然后设置相应的路径
			return "/resource/pic";
		} else if (suffixName.contains("xls") || suffixName.contains("xlsx")) {
			return "/resource/execl";
		} else if (suffixName.contains("doc")) {
			return "/resource/word";
		} else {
			return "/resource/others";
		}
	}

	/*
	 * 文件名拼接时间格式+随机数（yyyyMMddHHmmss+4位以内的随机）
	 */
	@Override
	public String getFileNameAndRandom() {
		String strsimple = new SimpleDateFormat("yyyyMMddHHmmss")
				.format(new Date());
		Random r = new Random(10);
		Integer i = r.nextInt(10000);// 四位以内的随机数
		return strsimple + i;
	}
}
