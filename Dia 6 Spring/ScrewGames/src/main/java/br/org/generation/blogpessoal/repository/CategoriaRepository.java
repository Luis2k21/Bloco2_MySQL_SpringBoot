package br.org.generation.blogpessoal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.generation.blogpessoal.model.Categoria;

@Repository
public interface CategoriaRepository extends JpaRepository <Categoria, Long>{

	public List<Categoria> findAllByTipoContainingIgnoreCase(String tipo);
}