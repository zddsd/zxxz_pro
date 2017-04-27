package com.zxxz.ssh.action;



import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zxxz.ssh.DFA.WordFilter;
import com.zxxz.ssh.entity.MovieComment;
import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.service.MovieCommentService;
import com.zxxz.ssh.service.MovieInfoService;
import com.zxxz.ssh.util.FileToText;

@Controller
public class MovieCommentAction extends ActionSupport  implements RequestAware, ModelDriven<MovieComment>,Preparable{
     
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	private MovieInfoService MovieInfoService;
	
	public MovieInfoService getMovieInfoService() {
		return MovieInfoService;
	}
	public void setMovieInfoService(MovieInfoService MovieInfoService) {
		this.MovieInfoService = MovieInfoService;
	}
	@Resource
	private MovieCommentService MovieCommentService;
	
	public MovieCommentService getMovieCommentService() {
		return MovieCommentService;
	}
	public void setMovieCommentService(MovieCommentService MovieCommentService) {
		this.MovieCommentService = MovieCommentService;
	}
	
	private String MovieComment_id;
	private MovieComment MovieComment;

	private String userid;
	private String infoid;
	private String context;
	private String score;
	private Integer page;
	
	public MovieComment getMovieComment() {
		return MovieComment;
	}
	public void setMovieComment(MovieComment MovieComment) {
		this.MovieComment = MovieComment;
	}
	
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getMovieComment_id() {
		return MovieComment_id;
	}
	public void setMovieComment_id(String MovieComment_id) {
		this.MovieComment_id = MovieComment_id;
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
			//过滤评论内容
//			 FileToText fileToText=new FileToText();
//	    	 //读出敏感词
//	    	 String strBuffer=fileToText.textToFile("D:/1.txt");
//	    //	strBuffer.split(",");
////	    	 
////	    	//转换成字符串数组
////	    	String[] a = StringUtils.split(strBuffer, ",");
////	    	List<String> sesWords=new ArrayList<String>();
////	    	for(String list:a)
////	    	{
////	    		sesWords.add(list);
////	    	}
////	    	String[] heightArray = (String[]) sesWords.toArray(new String[0]);
////	    	 System.out.println(StringUtils.split(strBuffer, ",")[0]=="中国");
////	    	System.out.println(StringUtils.split(strBuffer, ",")[0].equals("中国"));
//			
//			//方法一
//			String[] keywords = new String[4];
//	    	 keywords[0]="中国";
//	    	 keywords[1]="越南";
//	    	 keywords[2]="日本";
//	    	 keywords[3]="投诉";
	    	
//	    	 System.out.println(keywords[0]=="中国");
//			 System.out.println(keywords[0].equals("中国"));
			//方法二
			 
//	    	String[] keywords = new String[] { "中国", "越南", "日本", "投诉" };
//	    	 System.out.println(keywords[0]=="中国");
//			 System.out.println(keywords[0].equals("中国"));

			


	   // 	 FilterService filterService = new FilterService(keywords);
	    	 
	    	 
	    	 
//			String str=filterService.filter(context);
			 String str=WordFilter.doFilter(context);
			System.out.println(userid);
			System.out.println(userid+infoid+str);
		//	Integer id1= Integer.valueOf(infoid);
			Integer userid1=Integer.valueOf(userid);
			Integer infoid1=Integer.valueOf(infoid);
			double  score1=Double.parseDouble(score);
			model=new MovieComment();
		
			model.setMovieid(infoid1);
			model.setUserid(userid1);
			model.setScore(score1);
			model.setContext(str);
			model.setCommTime((String)(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date()));
			model.setStatus(1);
			System.out.println("执行保存成功");
			request.put("infoid", infoid);
			MovieCommentService.saveOrUpdate(model);
			
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
		  
			Integer id1= Integer.valueOf(MovieComment_id);
			request.put("page", page);
		     MovieCommentService.delete(id1);
			
			//this.MovieCommentService.deleteMovieComment(MovieComment);
		  
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
			Integer id1= Integer.valueOf(MovieComment_id);
			Integer id2= Integer.valueOf(infoid);
			System.out.println(id1);
			MovieCommentService.check(id1);
			
			request.put("page", page);
  	        request.put("infoid", id2);
			return "check";
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		
		return "failure";
	}
	
public String recheck(){
		
		
		try{
			Integer id1= Integer.valueOf(MovieComment_id);
		//	Integer id2= Integer.valueOf(infoid);
			System.out.println(id1);
			MovieCommentService.recheck(id1);
			
			request.put("page", page);
  	      //  request.put("infoid", id2);
			return "recheck";
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
	    	rpage= (int) Math.ceil((MovieCommentService.checkCount())/rows);
	    	System.out.println(rpage);
	    	if(page<=rpage+1)
	    	 {
	    		  request.put("moviecomment", MovieCommentService.findCheckListbypage(page, (int)rows));
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
			System.out.println(e);
		}
		return "failure";
	}
	
	public String ListByPage(){
		
		try{
			Integer id1= Integer.valueOf(infoid);
			
			MovieInfo MovieInfo=MovieInfoService.findMovieInfoById(id1);
			
			Integer rpage;
	    	double rows=10.0;
	    	

	    	rpage= (int) Math.ceil((MovieCommentService.count(id1))/rows);
	    	
	    	System.out.println(rpage);
	    	if(page<=rpage+1)
	    	 {
	    		  request.put("MovieComment", MovieCommentService.findListbypage1(id1,page, (int)rows));
	    	      request.put("page", page);
	    	      request.put("rpage", rpage);
	    	      request.put("MovieInfoname", MovieInfo.getName());
	    	      request.put("MovieInfoid", id1);
	    	      return "list";
	    	 }
	    	 else
	    	 {
	    		 return "error";
	    	 }
	    	//return "list";
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
    private MovieComment model;
	@Override
	public MovieComment   getModel() {
		// TODO Auto-generated method stub
		return model;
	}
    
	
	
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}
       

}
