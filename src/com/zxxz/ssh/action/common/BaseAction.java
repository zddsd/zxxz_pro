package com.zxxz.ssh.action.common;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 通用的Action基类
 * @author csdn
 *
 */
public class BaseAction extends ActionSupport{
	private static final long serialVersionUID = 2095129473240683503L;

	public static final String TEXT_CONTENT_TYPE = "text/plain;charset=UTF-8";
	
//	protected Integer page = 1;
//	protected Integer rows = 3;
	
	//======================封装web中的一些工具方法
	/**
	 * 往ActionContext存放属性
	 * @param key
	 * @param value
	 */
	public void put2ActionContext(String key, Object value){
		ActionContext.getContext().put(key, value);
	}
	
	/**
	 * 往Session域中存放属性
	 * @param key
	 * @param value
	 */
	public void put2Session(String key, Object value){
		ActionContext.getContext().getSession().put(key, value);
	}
	
	
	/**
	 * 往Application域中存放属性
	 * @param key
	 * @param value
	 */
	public void put2Application(String key, Object value){
		ActionContext.getContext().getApplication().put(key, value);
	}
	
	/**
	 * 获取HttpServletReuqest对象
	 * @return
	 */
	public HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}
	
	/**
	 * 获取HttpServletResponse对象
	 * @return
	 */
	public HttpServletResponse getResponse(){
		return ServletActionContext.getResponse();
	}
	
	/**
	 * 获取或创建HttpSession对象
	 * @return
	 */
	public HttpSession getSession(){
		return getRequest().getSession();
	}
	
	/**
	 * 获取HttpSession对象
	 * @param flag
	 * @return
	 */
	public HttpSession getSession(boolean flag){
		return getRequest().getSession(flag);
	}
	
	/**
	 * 获取ServletContext对象
	 * @return
	 */
	public ServletContext getServletContext(){
		return ServletActionContext.getServletContext();
	}
	
	/**
	 * 取得HttpRequest中指定名称的Parameter
	 */
	public String getParameter(String name) {
		return getRequest().getParameter(name);
	}
	
	/**
	 * 获取HttpRequest中指定名称的Attribute
	 * @param name
	 * @return
	 */
	public Object getRequestAttribute(String name){
		return getRequest().getAttribute(name);
	}
	
	/**
	 * 取得HttpSession中指定名称的Attribute
	 */
	public Object getSessionAttribute(String name) {
		HttpSession session = getSession(false);
		return (session == null ? null : session.getAttribute(name));
	}
	
	/**
	 * 取得ServletContext中指定名称的Attribute
	 */
	public Object getServletContextAttribute(String name) {
		return getServletContext().getAttribute(name);
	}
	
	/**
	 * 直接输出文本
	 * @param text
	 */
	public void renderText(String text){
		HttpServletResponse response = getResponse();
		response.setContentType(TEXT_CONTENT_TYPE);
		try {
			response.getWriter().write(text);
			response.getWriter().flush();
		} catch (IOException e) {
			throw new IllegalArgumentException(e); //把受检异常转换为非受检异常
		}
	}
	//======================================================

//	public void setPage(Integer page) {
//		this.page = page;
//	}
//
//	public void setRows(Integer rows) {
//		this.rows = rows;
//	}
//
//	public Integer getPage() {
//		return page;
//	}
//
//	
//	public Integer getRows() {
//		return rows;
//	}

	
	
}
