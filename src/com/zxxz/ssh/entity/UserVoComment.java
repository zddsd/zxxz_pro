package com.zxxz.ssh.entity;

import java.io.Serializable;

public class UserVoComment implements Serializable {
	/**
	 * @author zshuaijieAKI
	 */
	private static final long serialVersionUID = 1L;
	private int comment_id;
	private String username;	
	private String context;
	private String commTime;
    
	
	public UserVoComment(){
		
	}
	public UserVoComment(int comment_id,String username,String context,String commTime){
		this.comment_id=comment_id;
		this.username=username;
		this.context=context;
		this.commTime=commTime;
	}
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getCommTime() {
		return commTime;
	}
	public void setCommTime(String commTime) {
		this.commTime = commTime;
	}


}
