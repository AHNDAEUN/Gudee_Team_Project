package com.goodee.market;

import static org.junit.Assert.*;

import org.junit.Test;

import com.goodee.market.item.ItemDTO;

public class ItemDAOTest extends MyAbstractTest{

	
	@Test
	public void getDtailTest()throws Exception {
		
		ItemDTO itemDTO =new ItemDTO();
		
		itemDTO.getItemNum();
		itemDTO.getMemberNum();
		itemDTO.getItemTitle();
		itemDTO.getItemContents();
		itemDTO.getItemCategory();
		itemDTO.getItemPrice();
		itemDTO.getItemDueDate();
		itemDTO.getItemStatus();
	}
	
	@Test
	public void setAddTest()throws Exception {
		
		ItemDTO itemDTO =new ItemDTO();
		itemDTO.setItemTitle("djf");
		itemDTO.setItemContents("dfsf");
		itemDTO.setItemCategory("sfds");
		itemDTO.setItemPrice(3455);
	
	}

}
