package br.com.suasdigital.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.suasdigital.controle.Facade;
import br.com.suasdigital.modelo.Pessoa;

@WebServlet("/ServletCadastroPessoa")
public class ServletCadastroPessoa extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletCadastroPessoa() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		Pessoa pessoa = new Pessoa();
		pessoa.setNome(request.getParameter("nome").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setRg(request.getParameter("rg").replace("<", "").replace(">", "").trim());
		pessoa.setCpf(request.getParameter("cpf").replace("<", "").replace(">", "").trim());
		pessoa.setNis(request.getParameter("nis").replace("<", "").replace(">", "").trim());
		pessoa.setDatanascimento(request.getParameter("datanascimento"));
		pessoa.setNaturalidade(request.getParameter("naturalidade").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setUfnascimento(request.getParameter("ufnascimento").replace("<", "").replace(">", "").trim());
		pessoa.setSexo(request.getParameter("sexo"));
		pessoa.setFoto("bdfotos/avatar/pessoa.png");
		pessoa.setEstadocivil(request.getParameter("estadocivil").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setEscolaridade(request.getParameter("escolaridade").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setProfissao(request.getParameter("profissao").replace("<", "").replace(">", "").trim().toUpperCase());
		pessoa.setCondicaoocupacao(request.getParameter("condicaoocupacao").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setZonamoradia(request.getParameter("zonamoradia").replace("<", "").replace(">", "").trim());
		pessoa.setLogradouro(request.getParameter("logradouro").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setNumero(request.getParameter("numero").replace("<", "").replace(">", "").trim());
		pessoa.setComplemento(request.getParameter("complemento").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setBairro(request.getParameter("bairro").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setCep(request.getParameter("cep").replace("<", "").replace(">", "").trim());
		pessoa.setCidade(request.getParameter("cidade").replace("<", "").replace(">", "").toUpperCase().trim());
		pessoa.setUfcidade(request.getParameter("ufcidade").replace("<", "").replace(">", "").trim());
		pessoa.setEmail(request.getParameter("email").replace("<", "").replace(">", "").toLowerCase().trim());
		pessoa.setTelefonecelular(request.getParameter("telefonecelular").replace("<", "").replace(">", "").trim());
			
		System.out.println(pessoa.getNome());
		//cadastra pessoa.
		Facade.getInstance().getControlePessoa().ControleCadastraPessoa(pessoa);
		
		response.sendRedirect(request.getContextPath()+"/usuario_social_cadastrar.jsp?status=1");
	}	
}
