package com.zxxz.ssh.action;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.zxxz.ssh.action.common.BaseAction;
import com.zxxz.ssh.entity.User;
import com.zxxz.ssh.service.UserService;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
public class UserLogin extends BaseAction implements RequestAware{
   
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
			//HttpSession session=request.put("userid",userid);
			HttpSession httpSession = null;
			httpSession.setAttribute("userid", userid);
			httpSession.setAttribute("isLogin",true);
			return SUCCESS;
		}
		else
		{  
//			ActionContext context=ActionContext.getContext();  
//	     //ServletContext 实际存放值的地方  
//	     Map<String,Object>application=context.getApplication();  
//	     //HttpSession实际存放值的地方  
//	     Map<String, Object> session=context.getSession();  
//			session.put("errormessage", "账号或者密码错误");
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
}
