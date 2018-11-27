package com.cn.service;

import java.util.List;
import com.cn.entity.User;



public interface UserService {	
	List<User> listUserInfo();
	User getUserById(int userId);
	boolean insertuser(User user);
	boolean updateuser(User user);
	boolean deleteuser(int id);
	boolean checklogin(User user);
	boolean login(String username,String password);
	boolean check();
}
