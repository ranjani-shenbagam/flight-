package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.example")
public class P086Application {

	public static void main(String[] args) {
		SpringApplication.run(P086Application.class, args);
	}

}
