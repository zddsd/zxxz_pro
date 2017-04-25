package com.zxxz.ssh.action;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.zxxz.ssh.action.common.BaseAction;
import com.zxxz.ssh.entity.User;
import com.zxxz.ssh.service.UserService;


@Controller
public class UserLogin extends BaseAction implements RequestAware,SessionAware{
   
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
     private UserService userService;
	//登陆功能
    /**
     * 
     * @return
     */
     private String userid;
     private  String password;
     HttpSession httpSession = null;
     public String getUserid() {
		return userid;
	}
     public void setUserid(String userid) {
		this.userid = userid;
	}
     public String getPassword() {
		return password;
	}
     public void setPassword(String password) {
		this.password = password;
	}
     
     public void setUserService(UserService userService) {
		this.userService = userService;
	}
     public UserService getUserService() {
		return userService;
	}
     
     
     
	public String LoginAction()
	{    int id=0;
		try {
		id=Integer.parseInt(userid);
		
		User user=userService.findUserById(id);
		if(password.equals(user.getPassword()))
		{   
			
			//request.put("userid", user.getUserid());
			session.put("loginuserId",user.getUserid());
			session.put("loginusername", user.getUsername());
			session.put("userLogin", "isLogin");

			return SUCCESS;
		}
		else
		{  
             request.put("message", "账号或者密码错误");
		}
		
		
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
		}
		
		
		return "failure";
	}
	

	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}
	
	private  Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=arg0;
	}
}
