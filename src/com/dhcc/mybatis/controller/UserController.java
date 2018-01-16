package com.dhcc.mybatis.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dhcc.mybatis.bean.PersonalCityList;
import com.dhcc.mybatis.bean.User;
import com.dhcc.mybatis.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/getUser")
	public String emps(String id){
		User user = userService.getUserById(id);
		System.out.println(user);
		Map<String,Object> data = new HashMap<String,Object>();  
	    data.put("user",user);  
		return "index";
	}
	
	/**
	 * 个人预约界面
	 */
	@RequestMapping("/cityList")
	public String toCityList() {
		return "cityList/cityList";
	}
	
	/**
	 * 获取界面个人信息
	 * @param personal
	 * @return
	 */
	@RequestMapping("/personal")
	public String getCityList(PersonalCityList personal) {
		//插入数据
		
		return "cityList/retailInfoAdd";
	}
}
