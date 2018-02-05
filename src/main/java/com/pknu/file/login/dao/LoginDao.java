package com.pknu.file.login.dao;


import com.pknu.file.login.dto.LoginDto;

public interface LoginDao {

	LoginDto getUser(String UserId);

}
