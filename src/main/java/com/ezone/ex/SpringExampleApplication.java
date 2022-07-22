package com.ezone.ex;

import java.io.IOException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
public class SpringExampleApplication extends SpringBootServletInitializer{
	public static void main(String[] args) {
		SpringApplication.run(SpringExampleApplication.class, args);
	}
	
	

}
