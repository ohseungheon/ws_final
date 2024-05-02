package com.example.demo_final.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo_final.dto.UserDto;

@Mapper
public interface IUserDao {
	public UserDto getUserInfo(String uno); 
	public List<UserDto> getUserInfoList();
	public int saveUserInfo(UserDto dto );
	public int deleteUserInfo(String uno);
}
