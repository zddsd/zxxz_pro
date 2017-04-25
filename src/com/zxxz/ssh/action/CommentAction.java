package com.zxxz.ssh.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.ObjectUtils.Null;
import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zxxz.ssh.entity.Comment;
import com.zxxz.ssh.entity.News;
import com.zxxz.ssh.entity.UserVoComment;
import com.zxxz.ssh.service.CommentService;
import com.zxxz.ssh.service.NewsService;

@Controller
public class CommentAction extends ActionSupport  implements RequestAware, ModelDriven<Comment>,Preparable{
     
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	private NewsService newsService;
	
	public NewsService getNewsService() {
		return newsService;
	}
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	@Resource
	private CommentService commentService;
	
	public CommentService getCommentService() {
		return commentService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	
	private String comment_id;
	private Comment comment;

	private String userid;
	private String infoid;
	private String context;
	private Integer page;
	
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getInfoid() {
		return infoid;
	}
	public void setInfoid(String infoid) {
		this.infoid = infoid;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	
	
	public String save(){
		
		try{
			System.out.println(userid);
			System.out.println(userid+infoid+context);
		//	Integer id1= Integer.valueOf(infoid);
			Integer userid1=Integer.valueOf(userid);
			Integer infoid1=Integer.valueOf(infoid);
			
			model=new Comment();
			//model.setComment_id(554433);
			model.setInfoId(infoid1);
			model.setUserId(userid1);
			model.setContext(context);
			model.setCommTime((String)(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date()));
			model.setStatus(1);
			System.out.println("执行保存成功");
			request.put("infoid", infoid);
			commentService.saveOrUpdate(model);
			
			System.out.println("保存成功");
			return SUCCESS;
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
			System.out.println(e);
		}
		
		
		return "failure";
	}
	
	
	
	
	public  void preparesave() {
		// TODO Auto-generated method stub
         
	}
	
	
	
	public String delete(){
		  
		try{
		  
			Integer id1= Integer.valueOf(comment_id);
			
		     commentService.delete(id1);
			
			//this.commentService.deleteComment(comment);
		  
		  return "delete-s";
	  }
	  catch (Exception e) {
		// TODO: handle exception
		  e.printStackTrace();
		  System.out.println(e);
		  System.out.println("删除失败");
		
	}
	  
	  return "failure";
	}
	
	public String check(){
		
		
		try{
			Integer id1= Integer.valueOf(comment_id);
			Integer id2= Integer.valueOf(infoid);
			System.out.println(id1);
			//Integer id1= Integer.valueOf(comment_id);
			request.put("page", page);
	  	     
  	        request.put("infoid", id2);
			//System.out.println(id1);
			commentService.check(id1);
			
			return "check";
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		
		return "failure";
	}
	
	public String ListCheckByPage()
	{
		try{
			
		
			Integer rpage;
	    	double rows=5.0;
	    	rpage= (int) Math.ceil((commentService.checkCount())/rows);
	    	if(page<=rpage+1)
	    	 {
	    		  request.put("comment", commentService.findCheckListbypage(page, (int)rows));
	    	      request.put("page", page);
	    	      request.put("rpage", rpage);
	    	 }
	    	 else
	    	 {
	    		 return "error";
	    	 }
	    	return "list1";
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return "failure";
	}
	
	public String ListByPage(){
		
		try{
			Integer id1= Integer.valueOf(infoid);
			
			News news=newsService.findNewsById(id1);
			
			Integer rpage;
	    	double rows=10.0;
	    	

	    	rpage= (int) Math.ceil((commentService.count(id1))/rows);
	    	if(page<=rpage+1)
	    	 {
	    		  request.put("comment", commentService.findListbypage1(id1,page, (int)rows));
	    	      request.put("page", page);
	    	      request.put("rpage", rpage);
	    	      request.put("newsname", news.getTitle());
	    	      request.put("newsid", id1);
	    	 }
	    	 else
	    	 {
	    		 return "error";
	    	 }
	    	return "list";
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return "failure";
		
	} 
	
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
    private Comment model;
	@Override
	public Comment   getModel() {
		// TODO Auto-generated method stub
		return model;
	}
    
	
	
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}
       
//	public String test()
//	{   
//		List<UserVoComment> userVoComment=null;
//		try {
//			Integer id1= Integer.valueOf(infoid);
//			Integer page=1;
//	    	double rows=2.0;
//	    	
//			userVoComment=commentService.findListbypage1(id1, page,(int)rows);	
//			System.out.println(userVoComment);
//			return SUCCESS;
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			System.out.println(e);
//		}
//		return "failure";
//	}
}
