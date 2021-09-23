package br.com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/helloGeneration")
public class Exercicio02Hello {
	
	@GetMapping
	public String objetivos() {
	
		String texto = "Meus objetivos de aprendizagem é entender "
				+ "como usar a ferramenta (Spring Boot) "
				+ "e (voltar a aplicar o Java)";
		return texto;
	}
}
