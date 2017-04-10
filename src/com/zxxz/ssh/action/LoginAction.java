package com.zxxz.ssh.action;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.zxxz.ssh.entity.Admin;
import com.zxxz.ssh.service.AdminService;
@Controller
public class LoginAction extends ActionSupport implements RequestAware {

	/**
	 * @author zshuaijieAKI
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	private AdminService adminService;
	
	private String adminname;
   
	private String password;
	
	public String login(){
		
		
		
//		System.out.println("adminname：" + adminname);
//		System.out.println("password：" + password);
		int id = 0;
		try {
			id = Integer.parseInt(adminname);
			
			System.out.println(id);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		Admin admin =adminService.findAdminById(id);
		if (admin != null) {
			System.out.println("根据主键ID查询记录：查到了，查询成功！");
			if(password.equals(admin.getPassword())){
				System.out.println("用户名和密码均正确");
				
				HttpSession httpSession = null;
				httpSession.setAttribute("id", id);
				httpSession.setAttribute("isLogin",true);
				request.put("adminname",admin.getName());
				return SUCCESS;
			}
			else
			{System.out.println("用户名存在但密码不正确");
			
			
		
			}
			
		}
		
		else {
			System.out.println("用户名不存在");
		}
		
		return "failure";
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private Map<String, Object> request;

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

}
