package com.dhcc.mybatis.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dhcc.mybatis.bean.User;
import com.dhcc.mybatis.dao.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public User getUserById(String id) {
		return userDao.getUserById(id);
	}
}
