package com.zxxz.ssh.entity;

public class movieInfoVoComment {
	private int id;
	

	private String name;
	private String TName;
	private String director;
	private String actor;
	private String zone;
	private String showDate;
	private String key;
	private String info;
	private String posterUrl;
	private String last;
	private String language;
	private String class_;
	
	//在服务端处理
	private double rate;
	private String status;
    
	private int movie_id;
	private long co;
    
	public movieInfoVoComment(){}

	public movieInfoVoComment(int id, String name, String tName, String director, String actor, String zone,
			String showDate, String key, String info, String posterUrl, String last, String language, String class_,
			double rate, String status, int movie_id, long co) {
		//super();
		this.id = id;
		this.name = name;
		TName = tName;
		this.director = director;
		this.actor = actor;
		this.zone = zone;
		this.showDate = showDate;
		this.key = key;
		this.info = info;
		this.posterUrl = posterUrl;
		this.last = last;
		this.language = language;
		this.class_ = class_;
		this.rate = rate;
		this.status = status;
		this.movie_id = movie_id;
		this.co = co;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
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
	public String getPosterUrl() {
		return posterUrl;
	}
	public void setPosterUrl(String posterUrl) {
		this.posterUrl = posterUrl;
	}
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
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
    public int getMovie_id() {
		return movie_id;
	}
    public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
}
