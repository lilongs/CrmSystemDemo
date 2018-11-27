package com.cn.dao;



import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.cn.BaseTest;
import com.cn.entity.User;




public class UserDaoTest extends BaseTest {
	@Autowired
	private UserDao userdao;
	
	@Test
	@Ignore
	public void TestQueryListUser() {
		List<User> list=userdao.queryUser();
		String json=JSON.toJSONString(list);
		System.out.println(json);
	}
	
	@Test
	@Ignore
	public void TestQueryByid() {
		User user=userdao.queryuserById(1);
		List<User> list=new ArrayList<User>();
		list.add(user);
		String json=JSON.toJSONString(list);
		System.out.println(json);
	}
	
	@Test
	@Ignore
	public void TestInsertUser() {
		User user=new User();
		user.setUsername("张三");
		user.setPassword("123456");
		user.setRealname("张三");
		user.setSex(1);
		user.setCreateTime(new Date());
		int n=userdao.insertuser(user);
		if(n>0)
		{
			System.out.println("插入成功");
		}
		else {
			System.out.println("插入失败");
		}
	}

	@Test
	@Ignore
	public void TestUpdateUser() {
		User user=new User();	
		user.setId(3);				
		user.setStatus(1);
		user.setPassword("123");
		user.setUpdateTime(new Date());
		int n=userdao.updateuser(user);
		if(n>0)
		{
			System.out.println("更新成功");
		}
		else {
			System.out.println("更新失败");
		}
	}
	
	@Test
	@Ignore
	public void TestDeleteUser() {
		User user=new User();	
		user.setId(2);	
		int n=userdao.deleteuser(2);
		if(n>0)
		{
			System.out.println("删除成功");
		}
		else {
			System.out.println("删除失败");
		}
	}

	@Test
	@Ignore
	public void Testchecklogin(){
		User user=new User();
		user.setUsername("lilong");
		user.setPassword("123");
		int n=userdao.checklogin(user);
		if(n>0)
		{
			System.out.println("登录成功");
		}
		else {
			System.out.println("登录失败");
		}
	}

	@Test
	public void check(){
		int n=userdao.check();
		if(n>0)
		{
			System.out.println("成功");
		}
		else {
			System.out.println("失败");
		}
	}
}
