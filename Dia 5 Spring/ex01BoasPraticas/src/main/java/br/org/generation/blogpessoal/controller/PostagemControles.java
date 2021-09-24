package br.org.generation.blogpessoal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.generation.blogpessoal.model.Post;
import br.org.generation.blogpessoal.repository.PostRepositorio;

@RestController
@RequestMapping("/post")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class PostagemControles {

	@Autowired
	private PostRepositorio postRepositorio;
	
	@GetMapping
	public ResponseEntity<List<Post>> getAll() {
		
		return ResponseEntity.ok(postRepositorio.findAll());
	}
	
}

