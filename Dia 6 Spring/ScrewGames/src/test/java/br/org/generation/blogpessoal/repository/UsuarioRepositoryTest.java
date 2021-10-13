package br.org.generation.blogpessoal.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

import br.org.generation.blogpessoal.model.Usuario;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class UsuarioRepositoryTest {

	@Autowired
	public UsuarioRepository usuarioRepository;
	
	@BeforeAll
	void start() {
		
		Usuario usuario = new Usuario(0, "Jonathan dos Santos", "jonathan@email.com", "123456");
		if(!usuarioRepository.findByUsuario(usuario.getNome()).isPresent())
		usuarioRepository.save(usuario);
		
		usuario = new Usuario(0, "Jhonson dos Santos", "jhonson@email.com", "123456");
		if(!usuarioRepository.findByUsuario(usuario.getNome()).isPresent())
		usuarioRepository.save(usuario);
		
		usuario = new Usuario(0, "Rafael dos Santos", "rafael@email.com", "123456");
		if(!usuarioRepository.findByUsuario(usuario.getNome()).isPresent())
			usuarioRepository.save(usuario);
		
		usuario = new Usuario(0, "Danilo Souza", "danilo@email.com", "123456");
		if(!usuarioRepository.findByUsuario(usuario.getNome()).isPresent())
			usuarioRepository.save(usuario);
		
	}
	
	@Test
	@DisplayName("🎈 Valida nome")
	public void findByNomeRetornaNome() throws Exception{
		
		Usuario usuario = usuarioRepository.findByNome("Jonathan dos Santos");
		assertTrue(usuario.getNome().equals("Jonathan dos Santos"));	
	}
	
	
	@Test
	@DisplayName("🎃 Valida quantidade de nomes")
	public void findByNomeContaingIgnoreCaseRetornaTresUsuarios() {
		
		List<Usuario> listaUsuarios = usuarioRepository.findAllByNomeContainingIgnoreCase("Santos");
		assertEquals(3, listaUsuarios.size());
	}
	
	@AfterAll
	public void end() {
		
		usuarioRepository.deleteAll();
	}
	
}
