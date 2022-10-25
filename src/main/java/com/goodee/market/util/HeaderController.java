package com.goodee.market.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/*")
public class HeaderController {

	@GetMapping(value="teamMember")
	public String getteamMember() throws Exception{
		return "common/teamMember";
	}
	
	@GetMapping(value="erd")
	public String geterd() throws Exception{
		return "common/erd";
	}
	
	@GetMapping(value="workFlow")
	public String getworkFlow() throws Exception{
		return "common/workFlow";
	}
}
