package com.example.algamoney.api.event.listener;

import java.net.URI;

import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.example.algamoney.api.event.RecursoCriadoEvent;

@Component
public class RecursoCriadoListener implements ApplicationListener<RecursoCriadoEvent> {

	@Override
	public void onApplicationEvent(RecursoCriadoEvent recursoCriadoEvent) {
		HttpServletResponse response = recursoCriadoEvent.getResponse();
		Long codigo = recursoCriadoEvent.getCodigo();

		adicionarHeaderLocation(response, codigo);
	}

	private void adicionarHeaderLocation(HttpServletResponse response, Long codigo) {
		/**
		 * Monta a URI para passar ao location no header do response
		 * 
		 * fromCurrentRequestUri() = pega a uri da requisição atual, independente de
		 * aonde estiver executando(Ex: máquina local, servidor, ...) path e
		 * buildAndExpand = adiciona o codigo toUri = adiciona o codigo a uri
		 */
		URI uri = ServletUriComponentsBuilder.fromCurrentRequestUri().path("/{codigo}").buildAndExpand(codigo).toUri();

		/**
		 * Seta no header da resposta o location passando a uri Exemplo de retorno do
		 * location: Location →http://localhost:8080/categorias/13
		 */
		response.setHeader("Location", uri.toASCIIString());
	}

}
