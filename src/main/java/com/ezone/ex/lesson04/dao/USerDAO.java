package com.ezone.ex.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezone.ex.lesson04.model.User;

@Repository
public interface USerDAO {
	
	public User selectLastUser();
	public int insertUser(@Param("name") String name,
						  @Param("yyyymmdd") String yyyymmdd,
						  @Param("introduce") String introduce,
						  @Param("email") String email);
	
	public int selectNameCount(@Param("name") String name);  // 이름이 일치하는 개수 알려주는 것 return 타입을 int로
}
