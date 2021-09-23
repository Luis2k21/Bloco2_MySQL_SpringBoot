package br.com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello") //localhost:8080/hello
public class HelloController {

	@GetMapping
	public String mostrarHello() {
		return "Hello World, Familia 32";
	}
}
