package br.com.suasdigital.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.suasdigital.controle.Facade;
import br.com.suasdigital.modelo.Familia;

@WebServlet("/ServletCastraFamilia")
public class ServletCastraFamilia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletCastraFamilia() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Familia familia = new Familia();
		
		familia.setIdUsuarioReferencia(Long.parseLong(request.getParameter("idUsuarioReferencia").replace("<", "").replace(">", "").trim())); 
		familia.setOrigemFamiliar(request.getParameter("origem_familia").replace("<", "").replace(">", "").trim());
		familia.setCrasFamila(request.getParameter("cras").replace("<", "").replace(">", "").trim());
		familia.setObs(request.getParameter("obs").replace("<", "").replace(">", "").trim());
		
		System.out.println(familia.getIdUsuarioReferencia());
		System.out.println(familia.getOrigemFamiliar());
		System.out.println(familia.getCrasFamila());
		System.out.println(familia.getObs());
		
		Facade.getInstance().getControleFamilia().ControleCadastraPessoa(familia);
		
		response.sendRedirect(request.getContextPath()+"/familia_cadastrar.jsp?status=1");		
	}

}
