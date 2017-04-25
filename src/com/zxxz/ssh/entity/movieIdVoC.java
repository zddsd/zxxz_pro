package com.zxxz.ssh.entity;

public class movieIdVoC {
	
	private int  movieid;
	
	private long  co;
	

	public movieIdVoC(int movieid, long co) {
		super();
		this.movieid = movieid;
		this.co = co;
	}
	
	public long getCo() {
		return co;
	}
	public void setCo(long co) {
		this.co = co;
	}
	public int getMovieid() {
		return movieid;
	}
	public void setMovieid(int movieid) {
		this.movieid = movieid;
	}
}
