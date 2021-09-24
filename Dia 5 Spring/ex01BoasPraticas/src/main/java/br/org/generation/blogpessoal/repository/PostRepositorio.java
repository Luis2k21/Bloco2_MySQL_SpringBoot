package br.org.generation.blogpessoal.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.org.generation.blogpessoal.model.Post;

public interface PostRepositorio extends JpaRepository<Post, Long>{

}
