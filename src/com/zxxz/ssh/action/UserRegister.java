package com.zxxz.ssh.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.zxxz.ssh.action.common.BaseAction;
import com.zxxz.ssh.entity.User;
import com.zxxz.ssh.service.UserService;

@Controller
public class UserRegister extends BaseAction implements RequestAware,
ModelDriven<User>, Preparable {
    /**
	 * @author zshuaijieAKI
	 */
	
	private static final long serialVersionUID = 1L;
	@Resource
	private  UserService userService;
	
	private  String userid;
	private  String nickname;
    private  String email;
    private  String password;
    private String rpassword;
    private  String sex;
    private String birthday;
    
    private  String phonenumber;
    private  String zone;
    
    private  String img_user;
   
    
   
    
    private String xieyi;
 
	private Integer page;
	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}
    

     
    private InputStream inputStream;
    public InputStream getInputStream() {
		return inputStream;
	}
    public String validateLastName() throws UnsupportedEncodingException{
		if(userService.UserNameIsValid(nickname)){
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8")); 
		}else{
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8")); 
		}
		
		return "ajax-success";
	}
	
   
    //注册功能实现
    /**
     * register user
     * @author zshuaijieAKI
     * @param  user
     * @exception
     * @return
     */
    
    public void prepareSave(){
	  
    	
    }
    int  id=0;
    public String  save()
	{
	    
    	model =new User();
    	System.out.println(userid);
    	try {
    		
    		id = Integer.parseInt(userid);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
    	
    	model.setUserid(id);
		model.setUsername(nickname);
		model.setPassword(password);
		model.setEmail(email);
		model.setSex(sex);
		
		model.setPhonenumber(phonenumber);
		model.setImgUrl(img_user);
		model.setBirthday(birthday);
		model.setZone(zone);
		model.setCreateTime((String)(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date()));
		model.setStatus("1");

		System.out.println(model);
		if(xieyi.equals("1")&&password.equals(rpassword))
		{
		try{ 
			userService.saveOrUpdate(model);
			return SUCCESS;
			}
			catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
		
		}
		
		
		
		return "failure";
	}
    
    
    public  String ListByPage()
    {
       
    	Integer rpage;
    	double rows=5.0;
    	
    	
    	rpage= (int) Math.ceil((userService.count())/rows);

    	// System.out.println(rpage);

    	 if(page<=rpage)
    	 {
    	       
    	      request.put("user", userService.findListbypage(page, (int)rows));
    	      request.put("page", page);
    	      request.put("rpage", rpage);
    	 }
    	 else
    	 {
    		 return "error";
    	 }
    	return "list";
    }
	
    
	public String userinfo()
	{
		try {
			int id;
			id=Integer.parseInt(userid);
			
			User userinfo=userService.findUserById(id);
			request.put("userinfo", userinfo);
			
			return "userinfo";
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "failure";
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	
	private Map<String, Object> request;

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

	@Override
	public void prepare() throws Exception {}

	private User model;
	
	@Override
	public User getModel() {
		return model;
	}
	
	   
    public String getUserid() {
		return userid;
	}
    public void setUserid(String userid) {
		this.userid = userid;
	}
   public String getRpassword() {
		return rpassword;
	}
   public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}
   public String getXieyi() {
		return xieyi;
	}
   public void setXieyi(String xieyi) {
		this.xieyi = xieyi;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
	public String getImg_user() {
		return img_user;
	}
	public void setImg_user(String img_user) {
		this.img_user = img_user;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	public void setModel(User model) {
		this.model = model;
	}
}
