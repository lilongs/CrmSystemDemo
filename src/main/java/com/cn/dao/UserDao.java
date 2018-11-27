package com.cn.dao;

import java.util.List;

import com.cn.entity.User;

public interface UserDao {
	List<User> queryUser();
	User queryuserById(int id);
    int insertuser(User user);
    int updateuser(User user);
    int deleteuser(int id);
    int checklogin(User user);
    int login(String username,String password);
    int check();
}
