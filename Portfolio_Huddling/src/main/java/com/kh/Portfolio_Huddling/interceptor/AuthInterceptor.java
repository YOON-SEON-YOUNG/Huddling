package com.kh.Portfolio_Huddling.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.Portfolio_Huddling.member.MemberVo;

public class AuthInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		MemberVo memberVo = (MemberVo)session.getAttribute("memberVo");
		if(memberVo == null) {
			String uri = request.getRequestURI();
			String query = request.getQueryString();
			String targetLocation = uri + "?" + query;
			session.setAttribute("targetLocation", targetLocation);
			response.sendRedirect("/member/login");
			return false;
		}
		return true;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("targetLocation");
		super.postHandle(request, response, handler, modelAndView);
	}
}
