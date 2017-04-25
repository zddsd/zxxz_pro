package com.zxxz.ssh.entity;

public class UserVoMovieComment {
	/**
	 * @author zshuaijieAKI
	 */
	
	private int comment_id;
	private double score;
	private String username;	
	private String context;
	private String commTime;
    
	
     public UserVoMovieComment() {
		// TODO Auto-generated constructor stub
	}
	public UserVoMovieComment(int comment_id,double score,String username,String context,String commTime){
		this.comment_id=comment_id;
		this.score=score;
		this.username=username;
		this.context=context;
		this.commTime=commTime;
	}
	
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
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
