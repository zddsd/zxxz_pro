package com.zxxz.ssh.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zxxz.ssh.action.common.BaseAction;
import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.entity.News;
import com.zxxz.ssh.service.CommentService;
import com.zxxz.ssh.service.MovieInfoService;
import com.zxxz.ssh.service.NewsService;
import com.zxxz.ssh.util.FileToText;
import com.zxxz.ssh.util.TextToFile;

@Controller
public class NewsUploadAction extends BaseAction implements RequestAware,ModelDriven<News>,Preparable {
      
	/**
	 * @author zshuaijieAKI
	 */
	private static final long serialVersionUID = 1L;
	@Resource
	private NewsService newsService;
	@Resource
	private MovieInfoService movieInfoservice;
	//private News news;
	private String newsid;
	private String movieid;
	private String title;
	private String context;

	private String zone;
	
	
	private Integer page;
	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}
	
	public MovieInfoService getMovieInfoservice() {
		return movieInfoservice;
	}
	public void setMovieInfoservice(MovieInfoService movieInfoservice) {
		this.movieInfoservice = movieInfoservice;
	}
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
//	public News getNews() {
//		return news;
//	}
//	public void setNews(News news) {
//		this.news = news;
//	}
//	
	public String getNewsid() {
		return newsid;
	}
	public void setNewsid(String newsid) {
		this.newsid = newsid;
	}
	public void setMovieid(String movieid) {
		this.movieid = movieid;
	}
	public String getMovieid() {
		return movieid;
	}
	
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
    
	
	//保存电影资讯信息
	public String save()
	{  
		
		System.out.println(title+zone);
		
		//创建目录
		Date date = new Date(); 
		String path="G:/test/"+new SimpleDateFormat("yyyy/MM/dd").format(date); 
		
		File file = new File(path); 
		if(!file.exists()) 
		file.mkdirs();
		String f="/";
		
		System.out.println("保存成文件，并获取文件名");
		//生成文件名
		long t = System.currentTimeMillis();//获得当前时间的毫秒数
        Random rd = new Random(t);//作为种子数传入到Random的构造器中
        int  rs=rd.nextInt(999999);//生成随即整数
        String name=rs+".txt";
        
		
		System.out.println(name);
		String contextPathFormat=path+f+name;
		
		
		TextToFile textToFile=new TextToFile();
		System.out.println(context);
		String result=textToFile.textToFile(contextPathFormat, context);
		if(result.equals("done"))
		{
			System.out.println(contextPathFormat);
		}
		else{
			System.out.println("写入出错");
		}
		
		
		try{
	     
		int id1=Integer.parseInt(newsid);
		int movieId1=Integer.parseInt(movieid);
		 model=new News();
		 model.setContext(contextPathFormat);
	     model.setId(id1);
	     model.setMovieId(movieId1);
	     model.setTitle(title);
	     model.setDate((String)(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date()));
	     model.setZone(zone);
			
	     newsService.saveOrUpdate(model);
			
			
		return SUCCESS;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return "failure";
		
	}
	
	/**
	 * @param 
	 */
	//将内容保存成文件，并获取文件名
	public void prepareSave() {
		// TODO Auto-generated method stub
		
		
	   
	}
    
	//根据id显示新闻页面
	
	public String show()
	{
	     try{
	    	 int id1=Integer.parseInt(newsid);
	    	 //根据id查出context
	    	// Integer movieid1=Integer.parseInt(movieid);
	    	 System.out.println(id1);
	    	 News news=newsService.findNewsById(id1);
	    	 //推荐
	    	
	    	
	    	 
	    	 String strfilename=news.getContext();
	    	 
	    	 System.out.println(strfilename);
	    	 FileToText fileToText=new FileToText();
	    	 //读出内容
	    	 String strBuffer=fileToText.textToFile(strfilename);
	    	  
	    	 model =new News();
	    	 model.setId(news.getId());
	    	 model.setMovieId(news.getMovieId());
	    	 model.setTitle(news.getTitle());
	    	 model.setDate(news.getDate());
	    	 model.setZone(news.getZone());
	    	 model.setContext(strBuffer);
	    	 
	    	 
	    	 Integer id2= Integer.valueOf(newsid);
	    	 Long commentCount=commentService.count(id2);
	    	 //左侧
	    	  MovieInfo mInfo1= movieInfoservice.findMovieInfoById(news.getMovieId());
	    	  request.put("news", model);
	    	  request.put("commentCount",commentCount);
	    	  request.put("top", newsService.find());
	    	  request.put("movietop",movieInfoservice.find() );
	    	  
	    	 request.put("favorite", movieInfoservice.favorite(mInfo1.getClass_(),news.getMovieId()));
	    	 //右侧
	    	  
	    	//  request.put("top", top);
	    	 
	    	  return "show";
	     }
	     catch(Exception e){
	    	e.printStackTrace();
	    	// System.out.println(e);
	     }
		
		
		return "failure";
	}
	
	
	public  void prepareShow() {
		// TODO Auto-generated method stub
         
	}
	
	
	public String newsMenu()
	{
		try{
			    Integer rpage;
		     	double rows=10;
		     	System.out.println(page+zone);
		     	String zoneFlag=zone;
		     	switch (zone) {
	            case "1":
	            	zone="华语";
	                break;
	            case "2":
	            	zone="欧美";
	                break;
	            case "3":
	            	zone="日韩";
	                break;
	            case "4":
	            	zone="其他";
	                break;
	            default:
	            	zone="欧美";
	                break;
	            }
		     	System.out.println(zone);
		     	rpage= (int) Math.ceil((newsService.count(zone))/(double)rows);
		     	System.out.println(rpage);
		     	 if(page<=rpage)
		    	 {
		         request.put("menu",newsService.menu(zone,rpage,(int)rows));
		         request.put("page", page);
		    	 request.put("rpage", rpage);
		    	 request.put("zone1", zoneFlag);
		    	 }
		     	 else{
		     		 
		     		 return "error";
		     	 }
		       
		     	 return "newsmenu";
		
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
		}
		return "failuer";
	}
	
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
	private News model;
	public void setModel(News model) {
		this.model = model;
	}
	@Override
	public News getModel() {
		// TODO Auto-generated method stub
		return model;
	}
	
	 private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
	}
}
