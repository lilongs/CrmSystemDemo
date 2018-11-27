package com.cn.controller;


import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cn.entity.User;
import com.cn.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {
	@Autowired

	private UserService userService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private Map<String, Object> listUser() throws Exception {
		Map<String, Object> modelMap = new LinkedHashMap<String, Object>();
		List<User> list = userService.listUserInfo();
		if(list.size()>0){
			modelMap.put("code", 0);
			modelMap.put("msg", "success");
			modelMap.put("count", list.size());
		}
		else
		{
			modelMap.put("code", -1);
			modelMap.put("msg", "fail");
			modelMap.put("count", 0);
		}
		modelMap.put("data", list);
		return modelMap;
	}

	@RequestMapping(value="/getuserbyId",method = RequestMethod.GET)
	private Map<String, Object> getuserbyId(Integer userId){
		Map<String,Object> modelMap=new HashMap<String ,Object>();
		User user=userService.getUserById(userId);
		if(user.getUsername()!=null){
			modelMap.put("code", 0);
			modelMap.put("msg", "success");
			modelMap.put("count", 1);
		}
		else
		{
			modelMap.put("code", -1);
			modelMap.put("msg", "fail");
			modelMap.put("count", 0);
		}
		modelMap.put("data",user);
		return modelMap;
	}

	@RequestMapping(value="/adduser",method = RequestMethod.POST)
	private Map<String,Object> addUser(@RequestBody User user){
		Map<String,Object> modelMap=new HashMap<String ,Object>();
		modelMap.put("success",userService.insertuser(user));
		return modelMap;
	}

	@RequestMapping(value="/updateuser",method = RequestMethod.POST)
	private Map<String,Object> modifyArea(@RequestBody User user) {
		Map<String,Object> modelMap=new HashMap<String ,Object>();
		modelMap.put("success",userService.updateuser(user));
		return modelMap;
	}

	@RequestMapping(value="/deleteuser",method = RequestMethod.GET)
	private Map<String,Object> removeUser(Integer areaId) {
		Map<String,Object> modelMap=new HashMap<String ,Object>();
		modelMap.put("success",userService.deleteuser(areaId));
		return modelMap;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	private  Map<String,Object> Login(String username,String password){
		Map<String,Object> modelMap=new HashMap<String ,Object>();
		 modelMap.put("success",userService.login(username,password));
		return modelMap;
	}

//	private  Map<String,Object> Login(@RequestBody User user){
//		Map<String,Object> modelMap=new HashMap<String ,Object>();
//		 modelMap.put("success",userService.checklogin(user));
//		return modelMap;
//	}
}