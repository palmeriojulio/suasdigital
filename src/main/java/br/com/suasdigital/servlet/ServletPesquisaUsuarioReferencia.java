package br.com.suasdigital.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.suasdigital.controle.Facade;
import br.com.suasdigital.modelo.Pessoa;

@WebServlet("/ServletPesquisaUsuarioReferencia")
public class ServletPesquisaUsuarioReferencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ServletPesquisaUsuarioReferencia() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		Pessoa pessoa = new Pessoa();
		Gson gson = new Gson();
		
		Long idUserReferencia = Long.parseLong(request.getParameter("idUserReferencia").trim());
		
		pessoa = Facade.getInstance().getControlePessoa().ControleBuscaPessoaPorId(idUserReferencia);
							
		if (pessoa != null) {
			response.getWriter().print(gson.toJson(pessoa));
			response.getWriter().flush();
			response.getWriter().close();
		} else {			
			String idUserRef = String.valueOf(idUserReferencia);
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print("Usuário referência com o ID: "+"<strong>"+idUserRef+"</strong>");
		}

	}

}
