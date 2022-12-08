package com.dailycodebuffer.springsecuritydemo;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.dao.DataIntegrityViolationException;

@SpringBootApplication
public class SpringSecurityDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringSecurityDemoApplication.class, args);
	}
	@Bean
	CommandLineRunner commandLineRunner (UserRepository accountService) {
		return args -> {
			try {
				accountService.save(new User(1L, "jeff", "$2a$12$TrGRvzDEjUj.HVHGg0qpuOmc5mk00NqFp4ODi.Myv1NN2tV9zwyOq", "ADMIN"

				));
			} catch (DataIntegrityViolationException e) {
				System.out.println("Es scheint als ob ein Eintrag mit diesem username schon existiert.");
			}
		};
	}
}

