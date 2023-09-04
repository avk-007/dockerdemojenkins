package dev.docker.dockerDemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class DockerDemoApplication {

	@GetMapping("/welcome")
	public String welcome(){
		return "Spring boot docker demo example";
	}
	public static void main(String[] args) {
		SpringApplication.run(DockerDemoApplication.class, args);
	}

}
