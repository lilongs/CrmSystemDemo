package com.cn.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.dao.UserDao;
import com.cn.entity.User;
import com.cn.service.UserService;
import com.cn.until.DbContextHolder;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userdao;
	
	@Override
	public List<User> listUserInfo() {
		DbContextHolder.setDbType("dateSource_first");
		return userdao.queryUser();
	}

	@Override
	public User getUserById(int userId) {
		DbContextHolder.setDbType("dateSource_first");
		return userdao.queryuserById(userId);
	}

	@Transactional
	@Override
	public boolean insertuser(User user) {
		DbContextHolder.setDbType("dateSource_first");
		if(user.getUsername()!=null && !"".equals(user.getUsername()) && user.getPassword()!=null && !"".equals(user.getPassword())) {
			try {
				user.setCreateTime(new Date());
				int n = userdao.insertuser(user);
				if (n > 0) {
					return true;
				} else {
					return false;
				}
			} catch (Exception e) {
				throw new RuntimeException("插入用户信息异常!" + e.toString());
			}
		}else {
			throw new RuntimeException("用户信息不能为空!");
		}

	}

	@Transactional
	@Override
	public boolean updateuser(User user) {
		DbContextHolder.setDbType("dateSource_first");
		if(user.getUsername()!=null && !"".equals(user.getUsername()) && user.getPassword()!=null&& !"".equals(user.getPassword())){
			try {
				user.setUpdateTime(new Date());
				int n = userdao.updateuser(user);
				if (n > 0) {
					return true;
				} else {
					return false;
				}
			} catch (Exception e) {
				throw new RuntimeException("更新用户信息异常!" + e.toString());
			}
		}
		else{
			throw new RuntimeException("用户信息不能为空!");
		}
	}

	@Transactional
	@Override
	public boolean deleteuser(int id) {
		DbContextHolder.setDbType("dateSource_first");
		if(id>0){
			try{
				int n=userdao.deleteuser(id);
				if (n>0){
					return  true;
				}else {
					return  false;
				}
			}catch (Exception e){
				throw new RuntimeException("删除用户信息失败！"+e.toString());
			}
		}else{
			throw new RuntimeException("用户信息Id不能为空！");
		}
	}

	@Override
	public  boolean checklogin(User user){
		DbContextHolder.setDbType("dateSource_first");
		if(user.getUsername()!=null && !"".equals(user.getUsername()) && user.getPassword()!=null&& !"".equals(user.getPassword())){
			try {
				int n=userdao.checklogin(user);
				if(n>0){
					return  true;
				}else{
					return  false;
				}
			}
			catch (Exception e){
				throw new RuntimeException("登录失败！"+e.toString());
			}
		}else{
			throw new RuntimeException("用户信息不能为空！");
		}
	}

	@Override
	public  boolean login(String username,String password){
		DbContextHolder.setDbType("dateSource_first");
		if(username!=null && !"".equals(username) && password!=null&& !"".equals(password)){
			try {
				int n=userdao.login(username,password);
				if(n>0){
					return  true;
				}else{
					return  false;
				}
			}
			catch (Exception e){
				throw new RuntimeException("登录失败！"+e.toString());
			}
		}else{
			throw new RuntimeException("用户信息不能为空！");
		}
	}

	@Override
	public boolean check() {
		DbContextHolder.setDbType("dateSource_first");
		int n=userdao.check();
		if(n>0){
			return  true;
		}else{
			return  false;
		}
	}
}
