package br.com.devmedia.blog.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.AbstractPersistable;

@Entity
@Table(name="autores")
public class Autor extends AbstractPersistable<Long>{

	@Column(nullable = false, unique = true, length = 50)
	private String nome;
	
	@Column(nullable = false, length = 255)
	private String biografia;
	
	@JoinColumn(name = "usuario_id")
	@OneToOne
	private Usuario usuario;
	
	@OneToMany(mappedBy = "autor")
	private List<Postagem> postagens;
	
	
	public List<Postagem> getPostagens() {
		return postagens;
	}

	public void setPostagens(List<Postagem> postagens) {
		this.postagens = postagens;
	}

	@Override
	public String toString() {
		return "Autor [nome=" + nome + ", biografia=" + biografia + ", usuario=" + usuario + "]";
	}

	@Override
	public void setId(Long id) {
		// TODO Auto-generated method stub
		super.setId(id);
	}
	
	@Override
	public Long getId() {
		// TODO Auto-generated method stub
		return super.getId();
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getBiografia() {
		return biografia;
	}

	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	
}
