package br.com.suasdigital.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.suasdigital.controle.Facade;
import br.com.suasdigital.modelo.Pessoa;

@WebServlet("/ServletPesquisaPessoa")
public class ServletPesquisaPessoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletPesquisaPessoa() {
        super();        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * String nome = request.getParameter("nome").trim(); String cpf =
		 * request.getParameter("cpf").trim(); String nis =
		 * request.getParameter("nis").trim();
		 * 
		 * HttpSession session = request.getSession();
		 * 
		 * if(!nome.equals("")) { //Pesquisa por nome do usuario. List<Pessoa> pessoas =
		 * Facade.getInstance().getControlePessoa().ControleBuscaProfessorPorNome(nome);
		 * session.setAttribute("pessoas", pessoas); } else if(!cpf.equals("")) {
		 * //Busca por código do cpf. List<Pessoa> pessoas =
		 * Facade.getInstance().getControlePessoa().ControleListaPessoaPorCpf(cpf);
		 * session.setAttribute("pessoas", pessoas); } else if (nome.equals("") &&
		 * cpf.equals("")) { //Busca todos alunos por idescola. List<Pessoa> pessoas =
		 * Facade.getInstance().getControlePessoa().ControleListaPessoa();
		 * session.setAttribute("pessoas", pessoas); }
		 * 
		 * RequestDispatcher dispatcher =
		 * request.getRequestDispatcher("/pesquisarpessoa.jsp");
		 * dispatcher.forward(request, response);
		 */                      
	}

}
