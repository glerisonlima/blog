package br.com.devmedia.blog.util;

import java.text.Normalizer;

public class MyReplaceString {

	public static String formatarPermalink(String value){
		
		//Exemplo
		//Persistência com JPA! -> persistencia_com_jpa
		
		//Remove todo espaço que contem depois da frase.
		String link = value.trim();
		
		//deixa as letras minusculas
		link = link.toLowerCase();
		
		//remove todos os acentos e caracteres especiais
		link = Normalizer.normalize(link, Normalizer.Form.NFD);
		
		//remove todos os espaços e transforma em _
		link = link.replaceAll("\\s", "_");
		
		//remove os _ de tiver mais de um
		link = link.replaceAll("\\_+", "_");
		
		link = link.replaceAll("\\w", "");
		
		return link;
		
		
	}
}
