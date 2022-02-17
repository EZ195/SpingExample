package com.ezone.ex.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezone.ex.lesson02.dao.UsedGoodsDAO;
import com.ezone.ex.lesson02.model.UsedGoods;

@Service
public class UsedGoodsBO {
	
	@Autowired // usedGoodsDAO 객체를 따로 생성하지 않아도 스프링이 알아서 관리할 수 있도록 해줌
	private UsedGoodsDAO usedGoodsDAO;
	
	public List<UsedGoods> getUsedGoodsList() {
		
		List<UsedGoods> usedGoodsList = usedGoodsDAO.selectUsedGoodsList();
		// BO : 전달 받은 데이터를 조직하거나 계산하는 과정을 수행 그 결과를 돌려줌
		return usedGoodsList;
	}
}
