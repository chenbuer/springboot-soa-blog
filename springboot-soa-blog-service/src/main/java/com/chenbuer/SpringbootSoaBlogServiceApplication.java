package com.chenbuer;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.chenbuer.dao")
public class SpringbootSoaBlogServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootSoaBlogServiceApplication.class, args);
	}
}
