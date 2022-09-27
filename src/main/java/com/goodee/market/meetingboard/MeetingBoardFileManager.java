package com.goodee.market.meetingboard;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class MeetingBoardFileManager {
	
	public boolean deleteFile(ServletContext servletContext, String path, MeetingBoardImageDTO meetingBoardImageDTO) throws Exception {
		String realPath = servletContext.getRealPath(path);
		
		File file = new File(realPath, meetingBoardImageDTO.getFileName());
		
		return file.delete();
	}
	
	public String saveFile(ServletContext servletContext, String path, MultipartFile multipartFile) throws Exception {
		
		String realPath = servletContext.getRealPath(path);
		
		File file = new File(realPath);
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String fileName = UUID.randomUUID().toString();
		fileName = fileName + "_" + multipartFile.getOriginalFilename();
		
		file = new File(file, fileName);
		
		multipartFile.transferTo(file);
		
		return fileName;
		
	}

}
