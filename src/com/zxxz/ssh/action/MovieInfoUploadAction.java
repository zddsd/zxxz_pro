package com.zxxz.ssh.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zxxz.ssh.action.common.BaseAction;
import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.service.MovieCommentService;
import com.zxxz.ssh.service.MovieInfoService;
import com.zxxz.ssh.service.NewsService;
import com.zxxz.ssh.service.StarService;
import com.zxxz.ssh.util.FileToText;
import com.zxxz.ssh.util.NumberUtils;
import com.zxxz.ssh.util.TextToFile;
import com.zxxz.ssh.util.UploadImageUtil;



@Controller
public class MovieInfoUploadAction extends BaseAction implements RequestAware, ModelDriven<MovieInfo>,Preparable,SessionAware  {

	/**
	 *@author zshuaijieAKI
	 */
	private static final long serialVersionUID = 1L;
     
	@Resource
	private MovieInfoService movieInfoservice;
	
	
	@Resource
	private MovieCommentService MovieCommentService;
	
	@Resource
	private NewsService newsService;
	
	@Resource
	private StarService starService;
	
	private String id;
	private String name;
	private String TName;
	private String director;
	private String actor;
	private String zone;
	private String showDate;
	private String key;
	private String info;
	private File posterUrl;
//	private File posterUrl;
	private String posterUrlContentType;
	private String posterUrlFileName;
//	
    private String last;
	private String language;
	private String class_;
	private Integer page;
	public StarService getStarService() {
		return starService;
	}
	public void setStarService(StarService starService) {
		this.starService = starService;
	}
	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	
	public String getPosterUrlFileName() {
		return posterUrlFileName;
	}
	
	public void setPosterUrlFileName(String posterUrlFileName) {
		this.posterUrlFileName = posterUrlFileName;
	}
	
	public String getPosterUrlContentType() {
		return posterUrlContentType;
	}
	public void setPosterUrlContentType(String posterUrlContentType) {
		this.posterUrlContentType = posterUrlContentType;
	}
	public void setPosterUrl(File posterUrl) {
		this.posterUrl = posterUrl;
	}
	
	//上传文件开始

		public String save() throws IOException
		{  
			
			
			//保存context
			//创建目录
			System.out.println(info);
			Date date = new Date(); 
			String path1="G:/test/movieinfo"+new SimpleDateFormat("yyyy/MM/dd").format(date); 
			
			File file = new File(path1); 
			if(!file.exists()) 
			file.mkdirs();
			String f="/";
			
			System.out.println("保存成文件，并获取文件名");
			//生成文件名
			long t = System.currentTimeMillis();//获得当前时间的毫秒数
	        Random rd = new Random(t);//作为种子数传入到Random的构造器中
	        int  rs=rd.nextInt(999999);//生成随即整数
	        String txtname=rs+".txt";
	        
			
			System.out.println(txtname);
			String contextPathFormat=path1+f+txtname;
			
			
			TextToFile textToFile=new TextToFile();
			System.out.println(info);
			String result=textToFile.textToFile(contextPathFormat, info);
			if(result.equals("done"))
			{
				System.out.println(contextPathFormat);
			}
			else{
				System.out.println("写入出错");
			}
			
			
			
			try{
				
				/*
				 * 上传海报图片
				 * 
				 */
				String fileName=UploadImageUtil.UploadImage(posterUrl,posterUrlFileName);
			//	String  imageName=UploadImage();
				//	String imgFileFormats = UploadImageUtil.getFileFormats(uploadFileName);  
				
				int id1=Integer.parseInt(id);
				
		       
				String posterUrl1="movieinfo\\"+fileName+".jpg";
				
				
				System.out.println(posterUrl1);
				model=new MovieInfo();
				System.out.println(id1);
				model.setId(id1);
				model.setName(name);
				model.setTName(TName);
				model.setDirector(director);
				model.setActor(actor);
				model.setZone(zone);
				model.setShowDate(showDate);
				model.setKey(key);
				model.setInfo(contextPathFormat);
				model.setPosterUrl(posterUrl1);
				model.setLast(last);
				model.setLanguage(language);
				model.setClass_(class_);
				
				//初始评分为0;
				double rate=0.0;
				//评分
			//	model.setRate( Double.toString(NumberUtils.numberUtils(rate)));
				//设置初始状态
				model.setStatus("1");
				
				movieInfoservice.saveOrUpdate(model);
				
				return SUCCESS;
				
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				System.out.println(e);
			}
			
			return "failure";  
			
		}
	   
		public  void prepareSave() {
			// TODO Auto-generated method stub

		}
		
		
		
		public String show()
		{
		     try{
		    	 
		    	 double star = 0;
		    	 int id1=Integer.parseInt(id);
		    	 //根据id查出context
		    	 
		    	 System.out.println(id1);
		    	 MovieInfo movieInfo=movieInfoservice.findMovieInfoById(id1);
		    	 if(MovieCommentService.rateAvg(id1)!=0)
		    	 {
		    	 star =NumberUtils.numberUtils(MovieCommentService.rateAvg(id1));
		    	 }
		    	 else{
		    		 star=0;
		    	 }
		    	 String strfilename=movieInfo.getInfo();
		    	 
		    	 //System.out.println(strfilename);
		    	 FileToText fileToText=new FileToText();
		    	 //读出内容
		    	 String strBuffer=fileToText.textToFile(strfilename);
		    	  
		    	 model =new MovieInfo();

		    	 
		    	 
		    	    model.setId(movieInfo.getId());
					model.setName(movieInfo.getName());
					model.setTName(movieInfo.getTName());
					model.setDirector(movieInfo.getDirector());
					model.setActor(movieInfo.getActor());
					model.setZone(movieInfo.getZone());
					model.setShowDate(movieInfo.getShowDate());
					model.setKey(key);
					
					
					model.setInfo(strBuffer);
					
					
					
					model.setPosterUrl(movieInfo.getPosterUrl());
					model.setLast(movieInfo.getLast());
					model.setLanguage(movieInfo.getLanguage());
					model.setClass_(movieInfo.getClass_());
					model.setRate(star);
					model.setStatus(movieInfo.getStatus());
		             
					if (session.get("loginuserId")!=null) {
						
						int userid=(int)session.get("loginuserId");
						
						System.out.println(userid+"+"+id1);
		                boolean isstar=starService.findContextIdByUserid(userid,id1);	   
		                if(isstar==true)
		                {
		                request.put("isstar","1");
		                }
					}
					 	    
		    	 
		    	  request.put("movieinfo", model);
		    	  request.put("top", newsService.find());
		    	  request.put("movietop",movieInfoservice.find() );
		          request.put("favorite", movieInfoservice.favorite(model.getClass_(),id1));
		          request.put("MovieCommentCount", MovieCommentService.count(id1));
		    	//  request.put("star", );
		    	  return "show";
		     }
		     catch(Exception e){
		    	e.printStackTrace();
		    	 System.out.println(e);
		     }
			
			
			return "failure";
		}
		
		public  void prepareShow() {
			// TODO Auto-generated method stub
			
	         
		}
		
		/**
		 * 获取关键词
		 * @return
		 */
		private String keyWord;
		public String getKeyWord() {
			return keyWord;
		}
		public void setKeyWord(String keyWord) {
			this.keyWord = keyWord;
		}
		
		
		public String movieMatch()
		{
			
			
			try {
//		          if(request.put("movieResult",movieInfoservice.metch(keyWord))!=null)
//		          {
				
				 String keyWord1=StringEscapeUtils.escapeSql(keyWord); 
				  request.put("movieResult",movieInfoservice.metch(keyWord1));
		          return "match";
//		          }
//		          else
//		          {
//		        	  request.put("movieResult",null);
//		        	  return "match";
//		          }
				
			} catch (Exception e) {
				// TODO: handle exception
				
				e.printStackTrace();
				System.out.println(e);
			
			}
			return "failure";
		}
		
		
		
		public String movieIndex()
		{
			try {
//			 double star = 0;
//	    	      int id1=Integer.parseInt(id);
//				
//				 if(MovieCommentService.rateAvg(id1)!=0)
//		    	 {
//		    	 star =NumberUtils.numberUtils(MovieCommentService.rateAvg(id1));
//		    	 }
//		    	 else{
//		    		 star=0;
//		    	 }
				  request.put("top", newsService.find());
		    	  request.put("movietop",movieInfoservice.find());
		    	  request.put("re", movieInfoservice.re());
		    	  return "movieIndex";
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				System.out.println(e);
			}
			return "failure";
		}
      public String movieList(){
    	  try{
    		  
    		  Integer rpage;
  	    	  double rows=6.0;
  	    	

  	    	 rpage= (int) Math.ceil((movieInfoservice.movieListCount(zone,class_))/rows);
  	    	 System.out.println(rpage);
  	    	if(page<=rpage+1)
	    	 {
    		  request.put("movieList", movieInfoservice.movieList(zone, class_, page, (int)rows)) ;
    		  request.put("page", page);
    		  request.put("rpage", rpage);
	    	 }
    		  return "movieList";
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
      private MovieInfo model;
	@Override
	public MovieInfo getModel() {
		// TODO Auto-generated method stub
		return model ;
	}
   public void setModel(MovieInfo model) {
	this.model = model;
}
   
   
    

	
	private Map<String, Object> request;

	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}
     @Override
    public HttpServletRequest getRequest() {
    	// TODO Auto-generated method stub
    	return super.getRequest();
    }

	public MovieInfoService getMovieInfoservice() {
		return movieInfoservice;
	}

	public void setMovieInfoservice(MovieInfoService movieInfoservice) {
		this.movieInfoservice = movieInfoservice;
	}

	public MovieCommentService getMovieCommentService() {
		return MovieCommentService;
	}

	public void setMovieCommentService(MovieCommentService movieCommentService) {
		MovieCommentService = movieCommentService;
	}

	public NewsService getNewsService() {
		return newsService;
	}

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTName() {
		return TName;
	}

	public void setTName(String tName) {
		TName = tName;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getShowDate() {
		return showDate;
	}

	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

//	public File getPosterUrl() {
//		return posterUrl;
//	}
//
//	public void setPosterUrl(File posterUrl) {
//		this.posterUrl = posterUrl;
//	}
//
//	public String getUploadContentType() {
//		return uploadContentType;
//	}
//
//	public void setUploadContentType(String uploadContentType) {
//		this.uploadContentType = uploadContentType;
//	}
//
//	public String getUploadFileName() {
//		return uploadFileName;
//	}
//
//	public void setUploadFileName(String uploadFileName) {
//		this.uploadFileName = uploadFileName;
//	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getClass_() {
		return class_;
	}

	public void setClass_(String class_) {
		this.class_ = class_;
	}
	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=arg0;
	}

}
