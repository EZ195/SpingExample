package com.ezone.ex.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezone.ex.lesson03.bo.ReviewBO;
import com.ezone.ex.lesson03.model.Review;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewBO reviewBO;
	
	@ResponseBody
	@RequestMapping("/lesson03/ex01")
	public Review review(
			
			// @RequestParam("id") Integer id) { // 기본 사용법 필수 파라미터
			// @RequestParam(value="id" , required=true) Integer id) {		//필수 파라미터
			// @RequestParam(value="id" , required=false) Integer id) { 	//비필수 파라미터 - 있으면 적용 없으면 적용안함
			@RequestParam(value="id" , defaultValue="1") int id) {
		
		// if(id == null) {
		//	id = 1;
		// }
		
		return reviewBO.getReview(id);
	}
	
	@ResponseBody
	@RequestMapping("/lesson03/ex02")
	public String ex02() {
		// 객체 형태로 파라미터 활용하기
		//		Review review = new Review();
		//	review.setStoreId(2);
		//		review.setMenu("뿌링클");
		// review.setUserName("이지원");
		// review.setPoint(4.0);
		// review.setReview("JMT");
		
		// int count = reviewBO.addReviewByObject(review);
		
		int count = reviewBO.addReviewByField(4, "콤비네이션", "이지원", 4.3, "맛있음");
		
		return "삽입결과 : " + count;
	}
	
	
	
	
}
