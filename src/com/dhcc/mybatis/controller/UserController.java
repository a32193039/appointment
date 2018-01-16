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
	 * ����ԤԼ����
	 */
	@RequestMapping("/cityList")
	public String toCityList() {
		return "cityList/cityList";
	}
	
	/**
	 * ��ȡ���������Ϣ
	 * @param personal
	 * @return
	 */
	@RequestMapping("/personal")
	public String getCityList(PersonalCityList personal) {
		//��������
		
		return "cityList/retailInfoAdd";
	}
}
