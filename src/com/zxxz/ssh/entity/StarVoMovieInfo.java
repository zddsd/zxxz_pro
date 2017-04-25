package com.zxxz.ssh.entity;

public class StarVoMovieInfo {
	private int star_id;
	private int context_id;
    private int user_id;
    private String date;
    private String class_;
    private String name;
    
    public StarVoMovieInfo(){}
    public StarVoMovieInfo(int star_id, int context_id, int user_id, String date, String class_, String name) {
		super();
		this.star_id = star_id;
		this.context_id = context_id;
		this.user_id = user_id;
		this.date = date;
		this.class_ = class_;
		this.name = name;
	}
    public int getStar_id() {
		return star_id;
	}
	public void setStar_id(int star_id) {
		this.star_id = star_id;
	}
	public int getContext_id() {
		return context_id;
	}
	public void setContext_id(int context_id) {
		this.context_id = context_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getClass_() {
		return class_;
	}
	public void setClass_(String class_) {
		this.class_ = class_;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}


}
