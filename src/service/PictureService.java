package service;

public interface PictureService {

	/*
	 * 处理文件路径
	 */
	public String getPathByFileName(String fileName);

	/*
	 * 文件上传复制
	 */
	public String getFileNameAndRandom();
}
