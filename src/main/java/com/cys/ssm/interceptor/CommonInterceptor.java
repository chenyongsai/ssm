package com.cys.ssm.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cys.ssm.dao.IRoleDao;
import com.cys.ssm.dao.IUserLogDao;
import com.cys.ssm.model.UserLog;

public class CommonInterceptor extends HandlerInterceptorAdapter {
	private Logger log = Logger.getLogger(CommonInterceptor.class);
	
	@Resource    
    private IUserLogDao ulDao;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		log.info("URL="+request.getRequestURL().toString()+(request.getQueryString()!=null?request.getQueryString():""));
		addUserLog(request);
		return true;
	}

	private void addUserLog(HttpServletRequest request) {
		UserLog ul = new UserLog();
		ul.setUserName("张三");
		ul.setIp(request.getRemoteAddr());
		ul.setUrl(request.getRequestURL().toString());
		ul.setParams(request.getQueryString());
		ulDao.insert(ul);
	}

	/**
	 * This implementation is empty.
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)throws Exception {
	
	}

	/**
	 * This implementation is empty.
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)throws Exception {

	}
	
	public static String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}
}
