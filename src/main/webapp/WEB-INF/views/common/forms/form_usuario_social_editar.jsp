<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="br.com.suasdigital.util.TimeStamp"%>
<%@page import="br.com.suasdigital.controle.Facade"%>
<%@page import="br.com.suasdigital.modelo.Pessoa"%>
<%@page import="br.com.suasdigital.modelo.Uf"%>

<%@page import="java.util.List" %>

<%
 Pessoa pessoa = Facade.getInstance().getControlePessoa().ControleBuscaPessoaPorId(Long.parseLong(request.getParameter("idpessoa")));
%>

<% List<Uf> ufs = Facade.getInstance().getControleUf().ListaUf();  %>

<% TimeStamp data = new TimeStamp();%>

<section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">            
            <!-- Horizontal Form -->
            <div class="card card-outline card-secondary">
              <div class="card-header">
                <h2 class="card-title">Dados Pessoais</h2>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" class="form-horizontal of" action="ServletEditarPessoa" method="post">
                <div class="card-body" style="margin-left: 50px;">
                  <div class="form-group row">
                    <label for="idpessoa" class="col-sm-2 col-form-label">ID</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" value="<%=pessoa.getIdpessoa() %>" disabled >
                      <input type="hidden" name="idpessoa" value="<%=pessoa.getIdpessoa() %>">
                    </div>
                  </div>	
                  <div class="form-group row">
                    <label for="nome" class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-9">
                      <input type="text" name="nome" class="form-control" id="nome" required="required" value="<%= pessoa.getNome() %>" maxlength="100">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="rg" class="col-sm-2 col-form-label">RG</label>
                    <div class="col-sm-9">
                      <input type="text" name="rg" class="form-control" id="rg" required="required" value="<%= pessoa.getRg() %>" >
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="cpf" class="col-sm-2 col-form-label">CPF</label>
                    <div class="col-sm-9">
                      <input type="text" name="cpf" class="form-control" id="cpf" required="required" value="<%=pessoa.getCpf() %>">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="nis" class="col-sm-2 col-form-label">NIS</label>
                    <div class="col-sm-9">
                      <input type="text" name="nis" class="form-control" id="nis" required="required" value="<%=pessoa.getNis() %>">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="datanascimento" class="col-sm-2 col-form-label">Nascimento</label>
                    <div class="col-sm-9">
                      <input type="date" name="datanascimento" class="form-control" required="required" value="<%= pessoa.getDatanascimento() %>" >	
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="naturalidade" class="col-sm-2 col-form-label">Naturalidade</label>
                    <div class="col-sm-9">
                      <input type="text" name="naturalidade" class="form-control" id="naturalidade" value="<%= pessoa.getNaturalidade() %>" maxlength="20">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="ufnascimento" class="col-sm-2 col-form-label">Estado de nascimento</label>
                    <div class="col-sm-9">
                      <select class="form-control select2 select2-hidden-accessible" 
                      		  style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true"
                      		  id="ufnascimento" name="ufnascimento">    
                      	<option value="" selected></option>                  		  
                       	<% for(Uf u: ufs) { %>
				           <% if(u.getSigla().equals(pessoa.getUfnascimento())) { %>
				    	      <option value="<%=u.getSigla() %>" selected><%=u.getEstado() %></option>
				    	   <%} else { %>
				    	      <option value="<%=u.getSigla() %>"><%=u.getEstado() %></option>
				    	   <%} %>
				    	<%} %>   
                  	  </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="sexo" class="col-sm-2 col-form-label">Sexo</label>
                    <div class="col-sm-9">
                      <select id="sexo" name="sexo" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<% if(pessoa.getSexo().equals("M")){ %>
					    	<option value="M" selected>Masculino</option>
					      	<option value="F">Feminino</option>
					    <% } else { %>
					      	<option value="M">Masculino</option>
					      	<option value="F" selected>Feminino</option>
					    <%} %>
                  	  </select>
                    </div>
                  </div>
				  <div class="form-group row">
                    <label for="exampleInputFile" class="col-sm-2 col-form-label">Foto</label>                    
                      <div class="col-sm-9">
                        <div class="custom-file">
    						<input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
    						<label class="custom-file-label" for="inputGroupFile01">Nenhum arquivo selecionado</label>
                        </div>                  
                      </div>	                
                  </div>                 
                </div> 
                
                <!-- Dados Social -->
                <div class="card card-outline card-secondary">                	
              		<div class="card-header">
                		<h2 class="card-title">Dados Social</h2>
              		</div>              		
              	</div>
              	
              	<div class="card-body" style="margin-left: 50px;">
              		<div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Estado civil</label>
                    <div class="col-sm-9">
                      <select name="estadocivil" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">Estado civil</option>
                    	<% if (pessoa.getEstadocivil().equals("Solteiro")) { %>
                    		<option value="Solteiro" selected>Solteiro</option> 
                    	<% } else { %>
                    		<option value="Solteiro">Solteiro</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getEstadocivil().equals("Casado")) { %>
                    		<option value="Casado" selected>Casado</option> 
                    	<% } else { %>
                    		<option value="Casado">Casado</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getEstadocivil().equals("Amansiado")) { %>
                    		<option value="Amansiado" selected>Amansiado</option> 
                    	<% } else { %>
                    		<option value="Amansiado">Amansiado</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getEstadocivil().equals("Divorciado")) { %>
                    		<option value="Divorciado" selected>Divorciado</option> 
                    	<% } else { %>
                    		<option value="Divorciado">Divorciado</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getEstadocivil().equals("Viúvo")) { %>
                    		<option value="Viúvo" selected>Viúvo</option> 
                    	<% } else { %>
                    		<option value="Viúvo">Viúvo</option>                       
                    	<% } %>
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Escolaridade</label>
                    <div class="col-sm-9">
                      <select name="escolaridade" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">Escolaridade</option>                    	
                    	<% if (pessoa.getEscolaridade().equals("Nunca frequentou escola")) { %>
                    		<option value="Nunca frequentou escola" selected>Nunca frequentou escola</option>
                    	<% } else { %>
                    		<option value="Nunca frequentou escola">Nunca frequentou escola</option>                      
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("Creche")) { %>
                    		<option value="Creche" selected>Creche</option>
                    	<% } else { %>
                    		<option value="Creche">Creche</option>           
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("Educação Infantil")) { %>
                    		<option value="Educação Infantil" selected>Educação Infantil</option>
                    	<% } else { %>
                    		<option value="Educação Infantil">Educação Infantil</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("1º ano E. Fundamental")) { %>
                    		<option value="1º ano E. Fundamental" selected>1º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="1º ano E. Fundamental">1º ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("2º ano E. Fundamental")) { %>
                    		<option value="2º ano E. Fundamental" selected>2º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="2º ano E. Fundamental">2º ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("3º ano E. Fundamental")) { %>
                    		<option value="3º ano E. Fundamental" selected>3º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="3º ano E. Fundamental">3º ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("4º ano E. Fundamental")) { %>
                    		<option value="4º ano E. Fundamental" selected>4º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="4º ano E. Fundamental">4º ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("5º ano E. Fundamental")) { %>
                    		<option value="5º ano E. Fundamental" selected>5º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="5º ano E. Fundamental">5º ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("6º ano E. Fundamental")) { %>
                    		<option value="6º ano E. Fundamental" selected>6º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="6º ano E. Fundamental">6º ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("7º ano E. Fundamental")) { %>
                    		<option value="7º ano E. Fundamental" selected>7º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="7º ano E. Fundamental">7º ano E. Fundamental</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("8º ano E. Fundamental")) { %>
                    		<option value="8º ano E. Fundamental" selected>8º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="8º ano E. Fundamental">8º ano E. Fundamental</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("9º ano E. Fundamental")) { %>
                    		<option value="9º ano E. Fundamental" selected>9º ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="9º ano E. Fundamental">9º ano E. Fundamental</option>                     
                    	<% } %> 
                    	                    	
                    	<% if (pessoa.getEscolaridade().equals("1º ano E. Médio")) { %>
                    		<option value="1º ano E. Médio" selected>1º ano E. Médio</option>
                    	<% } else { %>
                    		<option value="1º ano E. Médio">1º ano E. Médio</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("2º ano E. Médio")) { %>
                    		<option value="2º ano E. Médio" selected>2º ano E. Médio</option>
                    	<% } else { %>
                    		<option value="2º ano E. Médio">2º ano E. Médio</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("3º ano E. Médio")) { %>
                    		<option value="3º ano E. Médio" selected>3º ano E. Médio</option>
                    	<% } else { %>
                    		<option value="3º ano E. Médio">3º ano E. Médio</option>                     
                    	<% } %>   
                    	
                    	<% if (pessoa.getEscolaridade().equals("3º ano E. Médio")) { %>
                    		<option value="3º ano E. Médio" selected>3º ano E. Médio</option>
                    	<% } else { %>
                    		<option value="3º ano E. Médio">3º ano E. Médio</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("Superior Incompleto")) { %>
                    		<option value="Superior Incompleto" selected>Superior Incompleto</option>
                    	<% } else { %>
                    		<option value="Superior Incompleto">Superior Incompleto</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("Superior Completo")) { %>
                    		<option value="Superior Completo" selected>Superior Completo</option>
                    	<% } else { %>
                    		<option value="Superior Completo">Superior Completo</option>                     
                    	<% } %>    
                    	
                    	<% if (pessoa.getEscolaridade().equals("EJA – Ensino Fundamental")) { %>
                    		<option value="EJA – Ensino Fundamental" selected>EJA – Ensino Fundamental</option>
                    	<% } else { %>
                    		<option value="EJA – Ensino Fundamental">EJA – Ensino Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("EJA – Ensino Médio")) { %>
                    		<option value="EJA – Ensino Médio" selected>EJA – Ensino Médio</option>
                    	<% } else { %>
                    		<option value="EJA – Ensino Médio">EJA – Ensino Médio</option>                     
                    	<% } %>                    	
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="profissao" class="col-sm-2 col-form-label">Profissão</label>
                    <div class="col-sm-9">
                      <input type="text" name="profissao" class="form-control" id="profissao" value="<%= pessoa.getProfissao() %>" maxlength="30">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="condicaoocupacao" class="col-sm-2 col-form-label">Condição de Ocupação</label>
                    <div class="col-sm-9">
                      <select name="condicaoocupacao" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">Condição de Ocupação</option>
                    	<% if (pessoa.getCondicaoocupacao().equals("Não Trabalha")) { %>
                    		<option value="Não Trabalha" selected>Não Trabalha</option>
                    	<% } else { %>
                    		<option value="Não Trabalha">Não Trabalha</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador por conta própria (bico, autônomo)")) { %>
                    		<option value="Trabalhador por conta própria (bico, autônomo)" selected>Trabalhador por conta própria (bico, autônomo)</option> 
                    	<% } else { %>
                    		<option value="Trabalhador por conta própria (bico, autônomo)">Trabalhador por conta própria (bico, autônomo)</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador temporário em área rural")) { %>
                    		<option value="Trabalhador temporário em área rural" selected>Trabalhador temporário em área rural</option> 
                    	<% } else { %>
                    		<option value="Trabalhador temporário em área rural">Trabalhador temporário em área rural</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Empregado sem carteira de trabalho assinada")) { %>
                    		<option value="Empregado sem carteira de trabalho assinada" selected>Empregado sem carteira de trabalho assinada</option> 
                    	<% } else { %>
                    		<option value="Empregado sem carteira de trabalho assinada">Empregado sem carteira de trabalho assinada</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Empregado com carteira de trabalho assinada")) { %>
                    		<option value="Empregado com carteira de trabalho assinada" selected>Empregado com carteira de trabalho assinada</option> 
                    	<% } else { %>
                    		<option value="Empregado com carteira de trabalho assinada">Empregado com carteira de trabalho assinada</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador doméstico sem carteira de trabalho assinada")) { %>
                    		<option value="Trabalhador doméstico sem carteira de trabalho assinada" selected>Trabalhador doméstico sem carteira de trabalho assinada</option> 
                    	<% } else { %>
                    		<option value="Trabalhador doméstico sem carteira de trabalho assinada">Trabalhador doméstico sem carteira de trabalho assinada</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador doméstico com carteira de trabalho assinada")) { %>
                    		<option value="Trabalhador doméstico com carteira de trabalho assinada" selected>Trabalhador doméstico com carteira de trabalho assinada</option> 
                    	<% } else { %>
                    		<option value="Trabalhador doméstico com carteira de trabalho assinada">Trabalhador doméstico com carteira de trabalho assinada</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador não-remunerado")) { %>
                    		<option value="Trabalhador não-remunerado" selected>Trabalhador não-remunerado</option> 
                    	<% } else { %>
                    		<option value="Trabalhador não-remunerado">Trabalhador não-remunerado</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Militar ou servidor público")) { %>
                    		<option value="Militar ou servidor público" selected>Militar ou servidor público</option> 
                    	<% } else { %>
                    		<option value="Militar ou servidor público">Militar ou servidor público</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Empregador")) { %>
                    		<option value="Empregador" selected>Empregador</option> 
                    	<% } else { %>
                    		<option value="Empregador">Empregador</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Estagiário")) { %>
                    		<option value="Estagiário" selected>Estagiário</option> 
                    	<% } else { %>
                    		<option value="Estagiário">Estagiário</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Aprendiz (em condição legal)")) { %>
                    		<option value="Aprendiz (em condição legal)" selected>Aprendiz (em condição legal)</option> 
                    	<% } else { %>
                    		<option value="Aprendiz (em condição legal)">Aprendiz (em condição legal)</option>                       
                    	<% } %>                     	
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="zonamoradia" class="col-sm-2 col-form-label">Região de Moradia</label>
                    <div class="col-sm-9">
                      <select name="zonamoradia" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">Região de Moradia</option>
                    	
                    	<% if (pessoa.getZonamoradia().equals("Zona Urbana")) { %>
                    		<option value="Zona Urbana" selected>Zona Urbana</option> 
                    	<% } else { %>
                    		<option value="Zona Urbana">Zona Urbana</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getZonamoradia().equals("Zona Rural")) { %>
                    		<option value="Zona Rural" selected>Zona Rural</option> 
                    	<% } else { %>
                    		<option value="Zona Rural">Zona Rural</option>                    
                    	<% } %>
                    	
                  	  </select>
                    </div>
                  </div>
                </div>
                  
                <!-- Endereço Pessoal -->
                <div class="card card-outline card-secondary">                	
              		<div class="card-header">
                		<h2 class="card-title">Endereço</h2>
              		</div>              		
              	</div>
              	
              	<div class="card-body" style="margin-left: 50px;">              		
                  <div class="form-group row">
                    <label for="logradouro" class="col-sm-2 col-form-label">Endereço</label>
                    <div class="col-sm-9">
                      <input type="text" name="logradouro" class="form-control" id="logradouro" required="required" value="<%= pessoa.getLogradouro() %>" maxlength="50">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="numero" class="col-sm-2 col-form-label">Número</label>
                    <div class="col-sm-9">
                      <input type="text" name="numero" class="form-control" id="numero" required="required" value="<%= pessoa.getNumero() %>" maxlength="4">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="complemento" class="col-sm-2 col-form-label">Complemento</label>
                    <div class="col-sm-9">
                      <input type="text" name="complemento" class="form-control" id="complemento" value="<%= pessoa.getComplemento() %>" maxlength="30">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="bairro" class="col-sm-2 col-form-label">Bairro</label>
                    <div class="col-sm-9">
                      <input type="text" name="bairro" class="form-control" id="bairro" required="required" value="<%= pessoa.getBairro() %>" maxlength="30">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="cep" class="col-sm-2 col-form-label">CEP</label>
                    <div class="col-sm-9">
                      <input type="text" name="cep" class="form-control" id="cep" required="required" value="<%= pessoa.getCep() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="cidade" class="col-sm-2 col-form-label">Cidade</label>
                    <div class="col-sm-9">
                      <input type="text" name="cidade" class="form-control" id="cidade" required="required" value="<%= pessoa.getCidade() %>" maxlength="30">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="ufcidade" class="col-sm-2 col-form-label">Estado</label>
                    <div class="col-sm-9">
                      <select name="ufcidade" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">UF</option>
				        <% if(pessoa.getUfcidade().equals("AC")) { %>
				        	<option value="AC" selected>Acre</option>
				        <% } else { %>
				            <option value="AC">Acre</option>
				        <% } %>
				        <% if(pessoa.getUfcidade().equals("AL")) { %>    	
				    		<option value="AL" selected>Alagoas</option>
				    	<% } else { %>
				    	    <option value="AL">Alagoas</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("AP")) { %>
				    		<option value="AP" selected>Amapá</option>
				    	<% } else { %>
				    	    <option value="AP">Amapá</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("AM")) { %>
				    		<option value="AM" selected>Amazonas</option>
				    	<% } else { %>
				    	    <option value="AM">Amazonas</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("BA")) { %>
				    		<option value="BA" selected>Bahia</option>
				    	<% } else { %>
				    	    <option value="BA">Bahia</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("CE")) { %>
				    		<option value="CE" selected>Ceará</option>
				    	<% } else { %>
				    	    <option value="CE">Ceará</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("DF")) { %>
				    		<option value="DF" selected>Distrito Federal</option>
				    	<% } else { %>
				    	    <option value="DF">Distrito Federal</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("ES")) { %>
				   			<option value="ES" selected>Espirito Santo</option>
				   		<% } else { %>
				    	    <option value="ES">Espirito Santo</option>
				    	<% } %>
				   		<% if(pessoa.getUfcidade().equals("GO")) { %>
				    		<option value="GO" selected>Goiás</option>
				    	<% } else { %>
				    	    <option value="GO">Goiás</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("MA")) { %>
				    		<option value="MA" selected>Maranhão</option>
				    	<% } else { %>
				    	    <option value="MA">Maranhão</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("MS")) { %>
				    		<option value="MS" selected>Mato Grosso do Sul</option>
				    	<% } else { %>
				    	    <option value="MS">Mato Grosso do Sul</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("MT")) { %>
				    		<option value="MT" selected>Mato Grosso</option>
				    	<% } else { %>
				    	    <option value="MT">Mato Grosso</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("MG")) { %>
				    		<option value="MG" selected>Minas Gerais</option>
				    	<% } else { %>
				    	    <option value="MG">Minas Gerais</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PA")) { %>
				    		<option value="PA" selected>Pará</option>
				    	<% } else { %>
				    	    <option value="PA">Pará</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PB")) { %>
				    		<option value="PB" selected>Paraíba</option>
				    	<% } else { %>
				    	    <option value="PB">Paraíba</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PR")) { %>
				    		<option value="PR" selected>Paraná</option>
				    	<% } else { %>
				    	    <option value="PR">Paraná</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PE")) { %>
				    		<option value="PE" selected>Pernambuco</option>
				    	<% } else { %>
				    	    <option value="PE">Pernambuco</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PI")) { %>
				    		<option value="PI" selected>Piauí</option>
				    	<% } else { %>
				    	    <option value="PI">Piauí</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("RJ")) { %>
				    		<option value="RJ" selected>Rio de Janeiro</option>
				    	<% } else { %>
				    	    <option value="RJ">Rio de Janeiro</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("RN")) { %>
				    		<option value="RN" selected>Rio Grande do Norte</option>
				    	<% } else { %>
				    	    <option value="RN">Rio Grande do Norte</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("RS")) { %>
				    		<option value="RS" selected>Rio Grande do Sul</option>
				    	<% } else { %>
				    	    <option value="RS">Rio Grande do Sul</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("RO")) { %>
				    		<option value="RO" selected>Rondônia</option>
				    	<% } else { %>
				    	    <option value="RO">Rondônia</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("RR")) { %>
				    		<option value="RR" selected>Roraima</option>
				    	<% } else { %>
				    	    <option value="RR">Roraima</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("SC")) { %>
				    		<option value="SC" selected>Santa Catarina</option>
				    	<% } else { %>
				    	    <option value="SC">Santa Catarina</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("SP")) { %>
				    		<option value="SP" selected>São Paulo</option>
				    	<% } else { %>
				    	    <option value="SP">São Paulo</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("SE")) { %>
				    		<option value="SE" selected>Sergipe</option>
				    	<% } else { %>
				    	    <option value="SE">Sergipe</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("TO")) { %>
				    		<option value="TO" selected>Tocantins</option>
				    	<% } else { %>
				    	    <option value="TO">Tocantins</option>
				    	<% } %>
                  	  </select>
                    </div>
                  </div>
                </div>
                
                <!-- Contato -->
                <div class="card card-outline card-secondary">                	
              		<div class="card-header">
                		<h2 class="card-title">Contato</h2>
              		</div>              		
              	</div>
              	
              	<div class="card-body" style="margin-left: 50px;">              		
                                    
                  <div class="form-group row">
                    <label for="email" class="col-sm-2 col-form-label">E-mail</label>
                    <div class="col-sm-9">
                      <input type="text" name="email" class="form-control" id="email" value="<%= pessoa.getEmail() %>" maxlength="40">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="telefonecelular" class="col-sm-2 col-form-label">Celular</label>
                    <div class="col-sm-9">
                      <input type="text" name="telefonecelular" class="form-control" id="telefonecelular" required="required" value="<%= pessoa.getTelefonecelular() %>">
                    </div>
                  </div>
                </div>        
                <!-- /.card-body -->
                <div class="card-footer">
                	<a href="usuario_social_listar.jsp" type="submit" class="btn btn-secondary">Vontar para lista</a>
                  	<button type="submit" class="btn btn-success">Salvar mudanças</button>
                </div>
                <!-- /.card-footer -->
              </form>
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (left) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    