package com.goodee.market.trade.item;

public class ItemCommentPager {
	
	private Long startRow;
	private Long lastRow;
	private Long itemNum;
	
	private Long page;
	private Long perPage;
	
	private Long totalPage;
	
	
	//전체 페이지 갯수 계산
	public void makePage(Long totalCount) {
	this.totalPage = totalCount/this.getPerPage();
	if(totalCount%this.getPage() !=0) {
	this.totalPage++;
			}
	
	}

	
	//startRow
	public void getRowNum() {
		startRow=(this.getPage()-1)*this.getPerPage()+1;
		lastRow=this.getPage()*this.getPerPage();
	}
	
	
	
	public Long getPerPage() {
		if(this.perPage==null || this.perPage<1) {
			this.perPage=10L;
		}
		return perPage;
	}



	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}



	public Long getPage() {
		if(this.page==null || this.page<1) {
			this.page=1L;
		}
		return page;
	}
	public void setPage(Long page) {
		this.page = page;
	}
	public Long getStartRow() {
		return startRow;
	}
	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}
	public Long getLastRow() {
		return lastRow;
	}
	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}
	public Long getItemNum() {
		return itemNum;
	}
	public void setItemNum(Long itemNum) {
		this.itemNum = itemNum;
	}



	public Long getTotalPage() {
		return totalPage;
	}



	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}

	
	
	
}
