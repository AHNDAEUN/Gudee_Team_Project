package com.goodee.market.Interceptor;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.goodee.market.member.MemberDTO;
import com.goodee.market.member.RoleDTO;

public class AdminCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		Map<String, Object> map = modelAndView.getModel();
		MemberDTO memberDTO = (MemberDTO)map.get("memberDTO");
		List<RoleDTO> roleDTOs = memberDTO.getRoleDTOs();
		boolean check = false;
		
		for(RoleDTO a: roleDTOs) {
			if(a.getRoleNum() == 1) {
				check = true;
				break;
			}
		}
		if(!check){
			String message = "관리자만 접근 가능합니다";
			String url = "/";
			modelAndView.addObject("message", message);
			modelAndView.addObject("url", url);
			modelAndView.setViewName("common/result");
		}
		super.postHandle(request, response, handler, modelAndView);
	}
	
	

}
