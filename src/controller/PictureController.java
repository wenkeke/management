package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import service.PictureService;

@Controller
public class PictureController {
	@Autowired
	// 自动装配pictureservice
	private PictureService pictureService;

	/**
	 * 文件统一上传(支持各种图片,execl,word,文件的自动保存)
	 * 
	 * @param file
	 *            表单里file文件的 name值
	 * @param session
	 *            session对象
	 */
	@RequestMapping("upload.do")
	public String upload(@RequestParam("file") MultipartFile file,
			HttpSession session) {
		String fileName = file.getOriginalFilename(); // 得到文件名
		String path = pictureService.getPathByFileName(fileName);// 声明要保存的路径位置
		// 得到绝对路径
		String absPath = session.getServletContext().getRealPath(path);
		// 创建文件流对象， 设置好保存的格式和路径
		File files = new File(absPath + File.separator
				+ pictureService.getFileNameAndRandom()
				+ fileName.substring(fileName.lastIndexOf('.')));
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), files);
			System.out.println("上传成功");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "test/testpicture.jsp";
	}
}
