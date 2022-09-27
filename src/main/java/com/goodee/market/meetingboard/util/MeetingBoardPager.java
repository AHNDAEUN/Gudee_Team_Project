package com.goodee.market.meetingboard.util;

public class MeetingBoardPager {

	private Long page;
	private Long startNum;
	private Long lastNum;
	private Long startRow;
	private Long lastRow;
	private Long perPage;
	private Long perBlock;
	
	// 이전 블럭의 유무 - 이전 블럭이 있으면 true, 없으면 false
	private boolean pre;
	// 다음 블럭의 유무 - 다음 블럭이 있으면 true, 없으면 false
	private boolean next;
	
	// 검색 컬럼의 종류
	private String kind;
	// 검색어
	private String search;
	
	public MeetingBoardPager() {
		this.perPage = 10L;
		this.perBlock = 5L;
	}
	
	public void getRowNum() throws Exception {
		this.startRow = (this.getPerPage() * (this.getPage() - 1) + 1);
		this.lastRow = this.getPerPage() * this.getPage();
	}
	
	public void getNum(Long totalCount) throws Exception {
		Long totalPage = totalCount / this.getPerPage();
		if(totalCount % this.getPerPage() > 0) {
			totalPage++;
		}
		//현재 page가 totalPage보다 큰 경우
		if(this.getPage() > totalPage) {
			this.setPage(totalPage); //마지막 페이지로 변경
		}
		
		Long totalBlock = totalPage / this.getPerBlock();
		if(totalPage % this.getPerBlock() > 0) {
			totalBlock++;
		}
		
		Long curBlock = this.getPage() / this.getPerBlock();
		if(this.getPage() % this.getPerBlock() > 0) {
			curBlock++;
		}
		
		this.startNum = (curBlock - 1) * this.getPerBlock() + 1;
		this.lastNum = curBlock * this.getPerBlock();
		
		if(curBlock == totalBlock) {
			this.lastNum = totalPage;
		}
		
		// 이전, 다음 블록 유무
		if(curBlock > 1) {
			pre = true;
		}
				
		if(curBlock < totalBlock) {
			next = true;
		}
	}

	public Long getPage() {
		if(this.page == null || this.page <= 0) {
			this.page = 1L;
		}
		
		return page;
	}

	public void setPage(Long page) {
		this.page = page;
	}

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
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

	public Long getPerPage() {
		if(this.perPage == null) {
			this.perPage = 10L;
		}	// 혹시라도 null일 경우를 대비한 안전장치
		return perPage;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}

	public Long getPerBlock() {
		return perBlock;
	}

	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
	}

	public boolean isPre() {
		return pre;
	}

	public void setPre(boolean pre) {
		this.pre = pre;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(this.search == null) {
			this.search = "";
		}
		
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	
}
