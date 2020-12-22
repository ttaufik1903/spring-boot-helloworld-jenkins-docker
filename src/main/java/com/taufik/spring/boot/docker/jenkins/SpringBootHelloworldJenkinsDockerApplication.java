package com.taufik.spring.boot.docker.jenkins;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringBootHelloworldJenkinsDockerApplication {

	@GetMapping("/message")
	public String getMessage() {
		System.out.println("====belajar docker integrasi jenkins====");
		return "Welcome to java docker... !!";
	}

	public static void main(String[] args) {
		SpringApplication.run(SpringBootHelloworldJenkinsDockerApplication.class, args);
	}

}
