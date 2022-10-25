package com.goodee.market.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.trade.item.ItemImageDTO;


@Component
public class FileManager {
	
	//fileDelete
	public Boolean deleteFile(ServletContext servletContext, String path, FileDTO fileDTO)throws Exception {
		String realPath = servletContext.getRealPath(path);
		File file = new File(realPath, fileDTO.getFileName());
		return file.delete();
	}
	

	// HDD file save
	public String saveFile(String path,ServletContext servletContext,MultipartFile multipartFile) throws Exception {
		
		String realPath =servletContext.getRealPath(path);
		System.out.println("realPath: "+realPath);
		
		
		File file =new File(realPath);
		if(!file.exists()) {
			file.mkdirs();
		}
			
		// 저장할 파일 생성
		String filename= UUID.randomUUID().toString();
		filename= filename+"-"+multipartFile.getOriginalFilename();
							
		//HDD 저장 
		file =new File(file, filename);
		multipartFile.transferTo(file);
				
		return filename;
				}
		
	}


