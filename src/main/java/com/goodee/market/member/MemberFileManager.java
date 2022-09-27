package com.goodee.market.member;

import java.io.File;
import java.util.UUID;
import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.util.FileDTO;

@Component
public class MemberFileManager {
	
	//사진 삭제
	public boolean deleteFile(ServletContext servletContext, String path, FileDTO fileDTO)throws Exception{
		String realpath = servletContext.getRealPath(path);
		File file = new File(realpath, fileDTO.getFileName());
		return file.delete();
	}
	
	
	
	
	//사진 저장
	public String saveFile(ServletContext servletContext, String path, MultipartFile multipartFile)throws Exception{
		//1. 실제 경로
		String realpath = servletContext.getRealPath(path);
		System.err.println(realpath);
		
		//2. 폴더(directory) 체크
		File file = new File(realpath);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//3. 저장할 파일명 생성
		//파일명이 겹치지 않게 UUID라는 API 사용
		String fileName = UUID.randomUUID().toString();
		//UUID를 통해 만든 이름에 파일의 오리지널 이름 붙임
		fileName = fileName + "_" + multipartFile.getOriginalFilename();
		
		//4. HDD에 저장
		file = new File(file, fileName);
		multipartFile.transferTo(file);
		
		return fileName;
		
		
	}

}
