package com.goodee.market.item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemService {
	
	@Autowired
	private ItemDAO itemDAO;
	
//	public int setFileDelete(ItemDTO itemDTO)throws Exception {
//		
//	}
	
	public ItemDTO getDetail(ItemDTO itemDTO)throws Exception {
		return itemDAO.getDetail(itemDTO);
	} 

	public int setAdd(ItemDTO itemDTO)throws Exception {
		return itemDAO.setAdd(itemDTO);
	}
	
	public int setUpdate(ItemDTO itemDTO)throws Exception {
		return itemDAO.setUpdate(itemDTO);
	}
	
	public int setDelete(ItemDTO itemDTO)throws Exception {
		return itemDAO.setDelete(itemDTO);
	}


}
