package br.com.projeto_mvc.loja.model;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Component;


@Component
public class CarrinhosCompra {
	
	private Map<CarrinhoItem, Integer> itens = new LinkedHashMap<CarrinhoItem, Integer>();
	
	public void add(CarrinhoItem item) {
		itens.put(item, getQuantidade(item) + 1);
	}

	private int getQuantidade(CarrinhoItem item) {
		if (itens.containsKey(item)) {
			itens.put(item, 0);
		}
		
		return itens.get(item);
	}
	
	public int getQuantidade() {
		return itens.values().stream().reduce(0, (proximo, acumulador) -> proximo + acumulador);
	}

}
