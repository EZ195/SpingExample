package com.ezone.ex.lesson06;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezone.ex.lesson04.bo.UserBO;

@Controller
@RequestMapping("/lesson06")
public class Lesson06Controller {
	
	@Autowired UserBO userBO;
	
	@GetMapping("/user_input")
	public String userInput() {
		
		return "lesson06/userInput";
	}
	
	@PostMapping("/add_user")
	@ResponseBody
	public String addUser(
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("introduce") String introduce,
			@RequestParam("email") String email) {
		
		int count = userBO.addUser(name, yyyymmdd, introduce, email);
		
		if (count == 1) {return "success";}
		else {return "fail";}
		
	}
	
	//이름 중복 확인
	@GetMapping("/is_duplicate")
	@ResponseBody
	public Map<String, Boolean> isDuplicate(@RequestParam("name") String name) {	//Boolean으로 감쌈
		
		boolean isDuplicate = userBO.isDuplicate(name);
		
		// 중복인 경우 
		// {"is_duplicate":true}
		// 중복이 아닌 경우
		// {"is_duplicate":false}
		
		
		Map<String, Boolean> resultMap = new HashMap<>();	
		/*
		if(isDuplicate == true) {
			resultMap.put("is_duplicate", true);
		}
		else {
			resultMap.put("is_duplicate", false);
		}
		*/
		
		resultMap.put("is_duplicate", isDuplicate); // boolean 자체가 true false니까 굳이 조건문을 사용하지 않고 true, false 출력 가능
		
		return resultMap;
	}
	
	
	

}
