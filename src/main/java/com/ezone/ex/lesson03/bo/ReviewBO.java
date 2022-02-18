package com.ezone.ex.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.ex.lesson03.dao.ReviewDAO;
import com.ezone.ex.lesson03.model.Review;

@Service
public class ReviewBO {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	// id 값을 전달 받아서 해당하는 리뷰 값을 리턴한다.
	public Review getReview(int id) {
		
		return reviewDAO.selectReview(id);
	}
	
	public int addReviewByObject(Review review) {
		return reviewDAO.addReviewByObject(review);
	}
	
	public int addReviewByField(int storeId, String menu, String usereName, double point, String review) {
		return reviewDAO.insertReviewByField(storeId, menu, usereName, storeId, review);
	}

}
