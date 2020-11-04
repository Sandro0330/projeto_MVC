package br.com.projeto_mvc.loja.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		System.out.println("Entrando na Home da Aplicação Web");
		return "home";
	}
}
 