package com.ezone.ex.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezone.ex.lesson04.bo.StudentBO;
import com.ezone.ex.lesson04.model.Student;

@Controller
@RequestMapping("/lesson04/ex02")
public class StudentController {
	
	@Autowired
	private StudentBO studentBO;
	
	@GetMapping("/input")
	public String studentInput() {
		return "lesson04/ex02_Input";
	}
	
	@GetMapping("/add_student")
	public String addStudent(@ModelAttribute Student student, Model model) { //@ModelAttribute 객체로 파라미터를 대신 받겠다. 
		
		int count = studentBO.addStudent(student);
		model.addAttribute("student" , student);
		
		return "lesson04/ex02Info";
	}
}
