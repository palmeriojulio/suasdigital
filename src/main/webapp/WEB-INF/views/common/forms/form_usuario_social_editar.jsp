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
                    	
                    	<% if (pessoa.getEstadocivil().equals("Vi??vo")) { %>
                    		<option value="Vi??vo" selected>Vi??vo</option> 
                    	<% } else { %>
                    		<option value="Vi??vo">Vi??vo</option>                       
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
                    	
                    	<% if (pessoa.getEscolaridade().equals("Educa????o Infantil")) { %>
                    		<option value="Educa????o Infantil" selected>Educa????o Infantil</option>
                    	<% } else { %>
                    		<option value="Educa????o Infantil">Educa????o Infantil</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("1?? ano E. Fundamental")) { %>
                    		<option value="1?? ano E. Fundamental" selected>1?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="1?? ano E. Fundamental">1?? ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("2?? ano E. Fundamental")) { %>
                    		<option value="2?? ano E. Fundamental" selected>2?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="2?? ano E. Fundamental">2?? ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("3?? ano E. Fundamental")) { %>
                    		<option value="3?? ano E. Fundamental" selected>3?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="3?? ano E. Fundamental">3?? ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("4?? ano E. Fundamental")) { %>
                    		<option value="4?? ano E. Fundamental" selected>4?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="4?? ano E. Fundamental">4?? ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("5?? ano E. Fundamental")) { %>
                    		<option value="5?? ano E. Fundamental" selected>5?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="5?? ano E. Fundamental">5?? ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("6?? ano E. Fundamental")) { %>
                    		<option value="6?? ano E. Fundamental" selected>6?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="6?? ano E. Fundamental">6?? ano E. Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("7?? ano E. Fundamental")) { %>
                    		<option value="7?? ano E. Fundamental" selected>7?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="7?? ano E. Fundamental">7?? ano E. Fundamental</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("8?? ano E. Fundamental")) { %>
                    		<option value="8?? ano E. Fundamental" selected>8?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="8?? ano E. Fundamental">8?? ano E. Fundamental</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("9?? ano E. Fundamental")) { %>
                    		<option value="9?? ano E. Fundamental" selected>9?? ano E. Fundamental</option>
                    	<% } else { %>
                    		<option value="9?? ano E. Fundamental">9?? ano E. Fundamental</option>                     
                    	<% } %> 
                    	                    	
                    	<% if (pessoa.getEscolaridade().equals("1?? ano E. M??dio")) { %>
                    		<option value="1?? ano E. M??dio" selected>1?? ano E. M??dio</option>
                    	<% } else { %>
                    		<option value="1?? ano E. M??dio">1?? ano E. M??dio</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("2?? ano E. M??dio")) { %>
                    		<option value="2?? ano E. M??dio" selected>2?? ano E. M??dio</option>
                    	<% } else { %>
                    		<option value="2?? ano E. M??dio">2?? ano E. M??dio</option>                     
                    	<% } %> 
                    	
                    	<% if (pessoa.getEscolaridade().equals("3?? ano E. M??dio")) { %>
                    		<option value="3?? ano E. M??dio" selected>3?? ano E. M??dio</option>
                    	<% } else { %>
                    		<option value="3?? ano E. M??dio">3?? ano E. M??dio</option>                     
                    	<% } %>   
                    	
                    	<% if (pessoa.getEscolaridade().equals("3?? ano E. M??dio")) { %>
                    		<option value="3?? ano E. M??dio" selected>3?? ano E. M??dio</option>
                    	<% } else { %>
                    		<option value="3?? ano E. M??dio">3?? ano E. M??dio</option>                     
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
                    	
                    	<% if (pessoa.getEscolaridade().equals("EJA ??? Ensino Fundamental")) { %>
                    		<option value="EJA ??? Ensino Fundamental" selected>EJA ??? Ensino Fundamental</option>
                    	<% } else { %>
                    		<option value="EJA ??? Ensino Fundamental">EJA ??? Ensino Fundamental</option>                     
                    	<% } %>
                    	
                    	<% if (pessoa.getEscolaridade().equals("EJA ??? Ensino M??dio")) { %>
                    		<option value="EJA ??? Ensino M??dio" selected>EJA ??? Ensino M??dio</option>
                    	<% } else { %>
                    		<option value="EJA ??? Ensino M??dio">EJA ??? Ensino M??dio</option>                     
                    	<% } %>                    	
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="profissao" class="col-sm-2 col-form-label">Profiss??o</label>
                    <div class="col-sm-9">
                      <input type="text" name="profissao" class="form-control" id="profissao" value="<%= pessoa.getProfissao() %>" maxlength="30">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="condicaoocupacao" class="col-sm-2 col-form-label">Condi????o de Ocupa????o</label>
                    <div class="col-sm-9">
                      <select name="condicaoocupacao" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">Condi????o de Ocupa????o</option>
                    	<% if (pessoa.getCondicaoocupacao().equals("N??o Trabalha")) { %>
                    		<option value="N??o Trabalha" selected>N??o Trabalha</option>
                    	<% } else { %>
                    		<option value="N??o Trabalha">N??o Trabalha</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador por conta pr??pria (bico, aut??nomo)")) { %>
                    		<option value="Trabalhador por conta pr??pria (bico, aut??nomo)" selected>Trabalhador por conta pr??pria (bico, aut??nomo)</option> 
                    	<% } else { %>
                    		<option value="Trabalhador por conta pr??pria (bico, aut??nomo)">Trabalhador por conta pr??pria (bico, aut??nomo)</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador tempor??rio em ??rea rural")) { %>
                    		<option value="Trabalhador tempor??rio em ??rea rural" selected>Trabalhador tempor??rio em ??rea rural</option> 
                    	<% } else { %>
                    		<option value="Trabalhador tempor??rio em ??rea rural">Trabalhador tempor??rio em ??rea rural</option>                       
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
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador dom??stico sem carteira de trabalho assinada")) { %>
                    		<option value="Trabalhador dom??stico sem carteira de trabalho assinada" selected>Trabalhador dom??stico sem carteira de trabalho assinada</option> 
                    	<% } else { %>
                    		<option value="Trabalhador dom??stico sem carteira de trabalho assinada">Trabalhador dom??stico sem carteira de trabalho assinada</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador dom??stico com carteira de trabalho assinada")) { %>
                    		<option value="Trabalhador dom??stico com carteira de trabalho assinada" selected>Trabalhador dom??stico com carteira de trabalho assinada</option> 
                    	<% } else { %>
                    		<option value="Trabalhador dom??stico com carteira de trabalho assinada">Trabalhador dom??stico com carteira de trabalho assinada</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Trabalhador n??o-remunerado")) { %>
                    		<option value="Trabalhador n??o-remunerado" selected>Trabalhador n??o-remunerado</option> 
                    	<% } else { %>
                    		<option value="Trabalhador n??o-remunerado">Trabalhador n??o-remunerado</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Militar ou servidor p??blico")) { %>
                    		<option value="Militar ou servidor p??blico" selected>Militar ou servidor p??blico</option> 
                    	<% } else { %>
                    		<option value="Militar ou servidor p??blico">Militar ou servidor p??blico</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Empregador")) { %>
                    		<option value="Empregador" selected>Empregador</option> 
                    	<% } else { %>
                    		<option value="Empregador">Empregador</option>                       
                    	<% } %>
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Estagi??rio")) { %>
                    		<option value="Estagi??rio" selected>Estagi??rio</option> 
                    	<% } else { %>
                    		<option value="Estagi??rio">Estagi??rio</option>                       
                    	<% } %> 
                    	
                    	<% if (pessoa.getCondicaoocupacao().equals("Aprendiz (em condi????o legal)")) { %>
                    		<option value="Aprendiz (em condi????o legal)" selected>Aprendiz (em condi????o legal)</option> 
                    	<% } else { %>
                    		<option value="Aprendiz (em condi????o legal)">Aprendiz (em condi????o legal)</option>                       
                    	<% } %>                     	
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="zonamoradia" class="col-sm-2 col-form-label">Regi??o de Moradia</label>
                    <div class="col-sm-9">
                      <select name="zonamoradia" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">Regi??o de Moradia</option>
                    	
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
                  
                <!-- Endere??o Pessoal -->
                <div class="card card-outline card-secondary">                	
              		<div class="card-header">
                		<h2 class="card-title">Endere??o</h2>
              		</div>              		
              	</div>
              	
              	<div class="card-body" style="margin-left: 50px;">              		
                  <div class="form-group row">
                    <label for="logradouro" class="col-sm-2 col-form-label">Endere??o</label>
                    <div class="col-sm-9">
                      <input type="text" name="logradouro" class="form-control" id="logradouro" required="required" value="<%= pessoa.getLogradouro() %>" maxlength="50">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="numero" class="col-sm-2 col-form-label">N??mero</label>
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
				    		<option value="AP" selected>Amap??</option>
				    	<% } else { %>
				    	    <option value="AP">Amap??</option>
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
				    		<option value="CE" selected>Cear??</option>
				    	<% } else { %>
				    	    <option value="CE">Cear??</option>
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
				    		<option value="GO" selected>Goi??s</option>
				    	<% } else { %>
				    	    <option value="GO">Goi??s</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("MA")) { %>
				    		<option value="MA" selected>Maranh??o</option>
				    	<% } else { %>
				    	    <option value="MA">Maranh??o</option>
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
				    		<option value="PA" selected>Par??</option>
				    	<% } else { %>
				    	    <option value="PA">Par??</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PB")) { %>
				    		<option value="PB" selected>Para??ba</option>
				    	<% } else { %>
				    	    <option value="PB">Para??ba</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PR")) { %>
				    		<option value="PR" selected>Paran??</option>
				    	<% } else { %>
				    	    <option value="PR">Paran??</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PE")) { %>
				    		<option value="PE" selected>Pernambuco</option>
				    	<% } else { %>
				    	    <option value="PE">Pernambuco</option>
				    	<% } %>
				    	<% if(pessoa.getUfcidade().equals("PI")) { %>
				    		<option value="PI" selected>Piau??</option>
				    	<% } else { %>
				    	    <option value="PI">Piau??</option>
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
				    		<option value="RO" selected>Rond??nia</option>
				    	<% } else { %>
				    	    <option value="RO">Rond??nia</option>
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
				    		<option value="SP" selected>S??o Paulo</option>
				    	<% } else { %>
				    	    <option value="SP">S??o Paulo</option>
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
                  	<button type="submit" class="btn btn-success">Salvar mudan??as</button>
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
    