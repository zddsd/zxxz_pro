package com.zxxz.ssh.entity;

import java.io.Serializable;


public class Admin implements Serializable {
      
		
	/**
	 * @author zshuaijieAKI
	 */
	private static final long serialVersionUID = 1L;
		  private int id;
          private String name;
          private String password;
          private String Status;
          private String group;
        
          public Admin() {
      	}

      	public Admin(int id, String name, String password, String Status, String group) {
      		this.id = id;
      		this.name = name;
      		this.password = password;
      		this.Status = Status;
      		this.group = group;
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
      	public String getPassword() {
      		return password;
      	}
      	public void setPassword(String password) {
      		this.password = password;
      	}
      	public String getStatus() {
      		return Status;
      	}
      	public void setStatus(String status) {
      		Status = status;
      	}
      	public String getGroup() {
      		return group;
      	}
      	public void setGroup(String group) {
      		this.group = group;
      	}
         
      	
        @Override
    	public String toString() {
    		return "Admin [id=" + id + ", name=" + name + ", password=" + password + ", Status=" + Status + ", group="
    				+ group + "]";
    	}
}
