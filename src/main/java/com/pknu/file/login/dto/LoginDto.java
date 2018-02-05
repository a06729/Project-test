package com.pknu.file.login.dto;

public class LoginDto {
	private String Id;
	private String Password;
	
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "Dto [Id=" + Id + ", Password=" + Password + "]";
	}
	
	
}
