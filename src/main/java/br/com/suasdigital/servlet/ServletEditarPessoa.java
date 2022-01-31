package br.com.suasdigital.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.suasdigital.controle.Facade;
import br.com.suasdigital.modelo.Pessoa;

@WebServlet("/ServletEditarPessoa")
public class ServletEditarPessoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ServletEditarPessoa() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Pessoa pessoa = new Pessoa();
		pessoa.setIdpessoa(Long.parseLong(request.getParameter("idpessoa")));
		pessoa.setNome(request.getParameter("nome").replace("<", "").replace(">", "").trim());
		pessoa.setRg(request.getParameter("rg").replace("<", "").replace(">", "").trim());
		pessoa.setCpf(request.getParameter("cpf").replace("<", "").replace(">", "").trim());
		pessoa.setNis(request.getParameter("nis").replace("<", "").replace(">", "").trim());
		pessoa.setDatanascimento(request.getParameter("datanascimento"));
		pessoa.setNaturalidade(request.getParameter("naturalidade").replace("<", "").replace(">", "").trim());
		pessoa.setUfnascimento(request.getParameter("ufnascimento").replace("<", "").replace(">", "").trim());
		pessoa.setSexo(request.getParameter("sexo"));
		pessoa.setFoto("bdfotos/avatar/pessoa.png");
		pessoa.setEstadocivil(request.getParameter("estadocivil").replace("<", "").replace(">", "").trim());
		pessoa.setEscolaridade(request.getParameter("escolaridade").replace("<", "").replace(">", "").trim());
		pessoa.setProfissao(request.getParameter("profissao").replace("<", "").replace(">", "").trim());
		pessoa.setCondicaoocupacao(request.getParameter("condicaoocupacao").replace("<", "").replace(">", "").trim());
		pessoa.setZonamoradia(request.getParameter("zonamoradia").replace("<", "").replace(">", "").trim());
		pessoa.setLogradouro(request.getParameter("logradouro").replace("<", "").replace(">", "").trim());
		
		if(request.getParameter("numero").equals("") 
			|| request.getParameter("numero").equalsIgnoreCase("SN")
			|| request.getParameter("numero").equalsIgnoreCase("S/N") 
			|| request.getParameter("numero").equalsIgnoreCase("S N")) {
			pessoa.setNumero("S/N°");
		} else {
			pessoa.setNumero(request.getParameter("numero").replace("<", "").replace(">", "").trim());
		}
		
		pessoa.setComplemento(request.getParameter("complemento").replace("<", "").replace(">", "").trim());
		pessoa.setBairro(request.getParameter("bairro").replace("<", "").replace(">", "").trim());
		pessoa.setCep(request.getParameter("cep").replace("<", "").replace(">", "").trim());
		pessoa.setCidade(request.getParameter("cidade").replace("<", "").replace(">", "").trim());
		pessoa.setUfcidade(request.getParameter("ufcidade").replace("<", "").replace(">", "").trim());
		pessoa.setEmail(request.getParameter("email").replace("<", "").replace(">", "").toLowerCase().trim());
		pessoa.setTelefonecelular(request.getParameter("telefonecelular").replace("<", "").replace(">", "").trim());
						
		Facade.getInstance().getControlePessoa().ControleEditaPessoa(pessoa);
		
		response.sendRedirect(request.getContextPath()+"/usuario_social_listar.jsp?idpessoa="+pessoa.getIdpessoa()+"&status=1");
	}

}
