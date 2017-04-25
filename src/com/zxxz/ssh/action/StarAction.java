package com.zxxz.ssh.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zxxz.ssh.entity.Star;
import com.zxxz.ssh.service.StarService;


@Controller
public class StarAction extends ActionSupport implements RequestAware,ModelDriven<Star>,Preparable ,SessionAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Resource
	private StarService starService;
	

	private Star star;
	private String star_id;
	private String userid;
	private String contextid;
	private String class_;
	
	private Integer page;
	public String getStar_id() {
		return star_id;
	}
	public void setStar_id(String star_id) {
		this.star_id = star_id;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
    public String save(){
       try{ 
       int user_id=Integer.parseInt(userid);
       int context_id=Integer.parseInt(contextid);
      // System.out.println(context_id);
       request.put("infoid", context_id);
     
       model=new Star();
       model.setContext_id(context_id);
       model.setclass_(class_);
       model.setDate((String)(new SimpleDateFormat("yyyy-MM-dd")).format(new Date()));
       model.setUser_id(user_id);
       
       if(starService.findContextIdByUserid(user_id, context_id)==true)
       {
        starService.saveOrUpdate(model);
       
        return SUCCESS;
       }
       else{
    	   
    	 
    	   
    	   
       }
       
    	   

       }catch (Exception e) {
		// TODO: handle exception
    	   e.printStackTrace();
    	   System.out.println(e);
	}
    	return "failure";
    	
    }
	
    public String ListByPage(){
    	try {
    		Integer rpage;
	    	double rows=10.0;
    		int  userid1=Integer.parseInt(userid);
    		
    		rpage= (int) Math.ceil(((starService.count(userid1, class_))/rows));
    		System.out.println(rpage);
    		if(page<=rpage+1)
	    	 {
    			 request.put("star", starService.findListbypage(userid1, class_ , rpage, (int)rows));
	    	     request.put("page", page);
	    	     request.put("rpage", rpage);
	    	 }
    		return "list";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
    	
    	return "failure";
    }
    
    public  String delete()
    {  
    	try {
    		int star_id1=Integer.parseInt(star_id);
			starService.delete(star_id1);
			request.put("userid",userid);
			request.put("page", page);
			request.put("class_", class_);
    		return "delete-s";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
    	return "failure";
    }
	public StarService getStarService() {
		return starService;
	}

	public void setStarService(StarService starService) {
		this.starService = starService;
	}

	public Star getStar() {
		return star;
	}

	public void setStar(Star star) {
		this.star = star;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getContextid() {
		return contextid;
	}

	public void setContextid(String contextid) {
		this.contextid = contextid;
	}

	public String getClass_() {
		return class_;
	}

	public void setClass_(String class_) {
		this.class_ = class_;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
    
	private Star model;
	@Override
	public Star getModel() {
		// TODO Auto-generated method stub
		return model;
	}
    private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}
	
	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=arg0;
	}

}
