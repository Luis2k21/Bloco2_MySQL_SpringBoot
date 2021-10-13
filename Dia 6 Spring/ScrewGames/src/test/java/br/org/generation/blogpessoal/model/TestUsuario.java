package br.org.generation.blogpessoal.model;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class TestUsuario {

	public Usuario usuario;
	public Usuario usuarioErro = new Usuario();
	
	@Autowired
	private ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	
	Validator validator = factory.getValidator();
	
	@BeforeEach
	public void start() {
		
		usuario = new Usuario (0L, "Luis Hariel", "luis@hotmail.com", "123456");
	}
	
	@Test
	@DisplayName("😎 Valida Atributos não Nulos")
	void testvalidaAtributos() {
		
		Set<ConstraintViolation<Usuario>> violacao = validator.validate(usuario);
		
		System.out.println(violacao.toString());
		
		assertTrue(violacao.isEmpty());
	}
	
	@Test
	@DisplayName("😭 Valida Atributos Nulos")
	void testvalidaAtributosNulos() {
		
		Set<ConstraintViolation<Usuario>> violacao = validator.validate(usuarioErro);
		
		System.out.println(violacao.toString());
		
		assertFalse(violacao.isEmpty());
	}
	
}
