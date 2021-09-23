package br.com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/helloWorld")
public class Exercicio01Hello {

	@GetMapping
	public String softSkills() {
		
		String texto = "\nDemonstrei a Habilidade de: Atenção aos detalhes" +" E também a"
				+ "\nMentalidade: Persistência";
		return texto;
	}
}
