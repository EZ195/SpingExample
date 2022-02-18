package com.ezone.ex.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.ezone.ex.lesson03.model.Review;

public interface ReviewDAO {
	
	
	//id 값을 전달 받아서 해당하는 리뷰 값을 리턴하다.
	public Review selectReview(@Param("id")int id);
	
	public int addReviewByObject(Review review);
	
	public int insertReviewByField(
			@Param("storeId") int storeId ,
			@Param("menu") String menu,
			@Param("userName") String userName,
			@Param("point") double point,
			@Param("review") String review
			);
	
	
}
