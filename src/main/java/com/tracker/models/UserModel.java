package com.tracker.models;

import javax.persistence.*;

@Entity
@Table(name = "user_master")
public class UserModel {
	
	public UserModel(){
		
	}
	public UserModel(int u_id,String u_name,String u_password){
		this.u_id=u_id;
		this.u_name=u_name;
		this.u_password=u_password;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "serial")
	private int u_id;
	
	
	
	@Column(nullable = false, length = 30)
	private String u_name;

	@Column(nullable = false, length = 30)
	private String u_password;


	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	
}
