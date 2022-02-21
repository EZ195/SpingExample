package com.ezone.ex.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.ex.lesson04.dao.USerDAO;
import com.ezone.ex.lesson04.model.User;

@Service
public class UserBO {
	
	
	@Autowired
	private USerDAO userDAO;
	
	public User getLastUser() {
		return userDAO.selectLastUser();		
	}
	
	public int addUser(String name, String yyyymmdd, String introduce, String email) {
		return userDAO.insertUser(name, yyyymmdd, introduce, email);
	}
}
