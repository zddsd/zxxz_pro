package com.zxxz.ssh.action;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zxxz.ssh.action.common.BaseAction;
import com.zxxz.ssh.entity.Admin;

import com.zxxz.ssh.service.AdminService;
@Controller
public class ListAdminAction extends BaseAction implements RequestAware, ModelDriven<Admin>,Preparable{
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource 
	private AdminService adminService;
	
	
	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	//private AdminDao adminDao;
	private int id;
	
	
	
	private Admin admin;
	
	private Integer page;
	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	//获取管理员列表
	public String list() {
		request.put("admin", adminService.findAllList());
		
		return "list";
	}
     public String listByPage(){
    	 Integer rpage;
     	double rows=3;
     	rpage= (int) Math.ceil((adminService.count())/(double)rows);
    	 
     	System.out.println(rpage);
    	 if(page<=rpage)
    	 {
    	 request.put("admin", adminService.findListbypage(page,(int)rows));
    	 request.put("page", page);
    	 request.put("rpage", rpage);
    	 }
    	 
    	 else
    	 {
    		 return "error";
    	 }
    	 return "list";
     }
	//删除管理员
	public String delete(){
	  
		try{
		  
		  this.adminService.deleteAdmin(admin);
		  
		  return SUCCESS;
	  }
	  catch (Exception e) {
		// TODO: handle exception
		  System.out.println(e);
		  System.out.println("删除失败");
		
	}
	  
	  return "failure";
	}
	

//保存管理员信息	
	public String save()
	{   
		try{
			
			adminService.saveOrUpdate(admin);
		
		return SUCCESS;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return "failure";
	}
	
	public void prepareSave(){
		if(id==0)
		{
			admin=new Admin();
			
		}
		else{
			admin=adminService.findAdminById(id);
		}
	}
	
	//修改管理员信息
	public String input(){
		
		return INPUT;
	}
	
	public void prepareInput(){
		if(id != 0){
			admin = adminService.findAdminById(id);
		}
	}
	
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
		
	}

	
    
	
	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin ;
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}
