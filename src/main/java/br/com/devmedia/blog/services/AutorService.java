package br.com.devmedia.blog.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.devmedia.blog.entity.Autor;
import br.com.devmedia.blog.repository.AutorRepository;

@Service
@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
public class AutorService {

	@Autowired
	private AutorRepository autorRepository;
	
	@Transactional(readOnly=false)
	public void save(Autor autor){
		if(autor.getId()==null){
			autorRepository.save(autor);
		}else{
			autorRepository.updateNomeAndBiografia(autor.getNome(), autor.getBiografia(), autor.getId());
		}
	}
	
	public Autor findById(Long id){
		return autorRepository.findOne(id);
	}
	
	public Autor findByNome(String nome){
		return autorRepository.findByNome(nome);
	}
	
	public List<Autor> findAll(){
		return autorRepository.findAll();
	}

	@Transactional(readOnly = false)
	public void delete(Long id) {
		autorRepository.delete(id);
		
	}
}
