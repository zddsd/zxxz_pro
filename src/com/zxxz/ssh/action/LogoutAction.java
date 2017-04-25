package com.zxxz.ssh.action;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
public class LogoutAction  extends ActionSupport implements SessionAware{
    
	
	
	/**
	 * @author zshuaijieAKI
	 */
	private static final long serialVersionUID = 1L;
	public String logout(){
	
		try{

          session.remove("loginusername");
          session.remove("loginuserId");
         
          session.remove("userLogin");
			
			return "logout";
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	return "failure";
	}
	
	public String adminlogout(){
		
		try{
		  session.remove("group");
          session.remove("adminname");
          session.remove("adminid");
          session.remove("adminLogin");
			
			return "adminlogout";
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	return "failure";
	}
	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=arg0;
	}

}
