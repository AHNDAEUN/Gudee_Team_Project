package com.goodee.market.trade.item;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.util.FileManager;
import com.goodee.market.util.MainPager;
import com.goodee.market.util.Pager;

@Service
public class ItemService{
	
	@Autowired
	private ItemDAO itemDAO;
	
	@Autowired
	private FileManager fileManager;
	

	
	public int setFileDelete(ItemImageDTO itemImageDTO, ServletContext servletContext)throws Exception{
		 itemImageDTO = itemDAO.getFileDetail(itemImageDTO);
		 int result = itemDAO.setFileDelete(itemImageDTO);
			String path="resources/upload/item";
		 if(result>0) {
			boolean check= fileManager.deleteFile(servletContext, path, itemImageDTO);
			 
		 }
		return result;	
	}

	public List<ItemDTO> getTradeMain(MainPager mainPager)throws Exception{
		Long totalCount=itemDAO.getMainCount(mainPager);
		mainPager.getNum(totalCount);
		mainPager.getRowNum();
		return itemDAO.getTradeMain(mainPager);
	}
	
	
	public List<ItemDTO> getList(Pager pager)throws Exception{
		Long totalCount=itemDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return itemDAO.getList(pager);
	}
	
	
	public List<ItemDTO> getHeartList(Pager pager)throws Exception{
		Long totalCount=itemDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return itemDAO.getHeartList(pager);
	}
	
	
	
	public ItemDTO getDetail(ItemDTO itemDTO)throws Exception {
		return itemDAO.getDetail(itemDTO);
	} 

	
	
	public int setAdd(ItemDTO itemDTO, MultipartFile[] files,ServletContext servletContext)throws Exception {
		
		int result=itemDAO.setAdd(itemDTO, files, servletContext); // 먼저 추가되어야 글번호 생성됨
		String path="resources/upload/item";
		
		for (MultipartFile multipartFile: files) {
		if(multipartFile.isEmpty()) {
			continue;
		}	
		String fileName= fileManager.saveFile(path, servletContext, multipartFile);
		ItemImageDTO itemImageDTO = new ItemImageDTO();
		itemImageDTO.setFileName(fileName);
		itemImageDTO.setOriName(multipartFile.getOriginalFilename());
		itemImageDTO.setItemNum(itemDTO.getItemNum());
		itemDAO.setAddFile(itemImageDTO);
		}
		return result;
	}
	
	
	
	public int setUpdate(ItemDTO itemDTO, MultipartFile[] files,ServletContext servletContext)throws Exception {
		int result= itemDAO.setUpdate(itemDTO);
		String path="resources/upload/item";

		if(result<1) {
			return result;
		}
		for (MultipartFile multipartFile: files) {
			if(multipartFile.isEmpty()) {
				continue;
			}	
			String fileName= fileManager.saveFile(path, servletContext, multipartFile);
			ItemImageDTO itemImageDTO = new ItemImageDTO();
			itemImageDTO.setFileName(fileName);
			itemImageDTO.setOriName(multipartFile.getOriginalFilename());
			itemImageDTO.setItemNum(itemDTO.getItemNum());
			itemDAO.setAddFile(itemImageDTO);
			}
		return result;
	}
	
	
	
	public int setDelete(ItemDTO itemDTO)throws Exception {
		return itemDAO.setDelete(itemDTO);
	}


}
