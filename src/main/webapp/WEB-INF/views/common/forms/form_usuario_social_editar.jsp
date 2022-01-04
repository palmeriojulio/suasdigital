<%@page import="br.com.suasdigital.util.TimeStamp"%>
<%@page import="br.com.suasdigital.controle.Facade"%>
<%@page import="br.com.suasdigital.modelo.Pessoa"%>

<% Pessoa pessoa = Facade.getInstance().getControlePessoa().ControleBuscaPessoaPorId(Long.parseLong(request.getParameter("idpessoa"))); %>

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
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-9">
                      <input type="text" name="nome" class="form-control" id="nome" required="required" value="<%=pessoa.getNome() %>" >
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">RG</label>
                    <div class="col-sm-9">
                      <input type="text" name="rg" class="form-control" id="rg" required="required" value="<%= pessoa.getRg() %>" >
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">CPF</label>
                    <div class="col-sm-9">
                      <input type="text" name="cpf" class="form-control" id="cpf" required="required" value="<%=pessoa.getCpf() %>">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">NIS</label>
                    <div class="col-sm-9">
                      <input type="text" name="nis" class="form-control" id="nis" required="required" value="<%=pessoa.getNis() %>">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="datanascimento" class="col-sm-2 col-form-label">Nascimento</label>
                    <div class="col-sm-9">
                      <input type="date" name="datanascimento" class="form-control" required="required" value="<%= data.ConverteFormatoDataUSparaBR(pessoa.getDatanascimento()) %>" >	
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="naturalidade" class="col-sm-2 col-form-label">Naturalidade</label>
                    <div class="col-sm-9">
                      <input type="text" name="naturalidade" class="form-control" id="naturalidade" value="<%= pessoa.getNaturalidade() %>">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Estado de nascimento</label>
                    <div class="col-sm-9">
                      <select class="form-control select2 select2-hidden-accessible" 
                      		  style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true"
                      		  name="ufnascimento">
                    	<option value="AC" data-select2-id="3" selected="selected">Acre</option>
    					<option value="AL">Alagoas</option>
    					<option value="AP">Amapá</option>
				    	<option value="AM">Amazonas</option>
				    	<option value="BA">Bahia</option>
				    	<option value="CE">Ceará</option>
				    	<option value="DF">Distrito Federal</option>
				   		<option value="ES">Espirito Santo</option>
				    	<option value="GO">Goiás</option>
				    	<option value="MA">Maranhão</option>
				    	<option value="MS">Mato Grosso do Sul</option>
				    	<option value="MT">Mato Grosso</option>
				    	<option value="MG">Minas Gerais</option>
				    	<option value="PA">Pará</option>
				    	<option value="PB">Paraíba</option>
				    	<option value="PR">Paraná</option>
				    	<option value="PE">Pernambuco</option>
				    	<option value="PI">Piauí</option>
				    	<option value="RJ">Rio de Janeiro</option>
				    	<option value="RN">Rio Grande do Norte</option>
				    	<option value="RS">Rio Grande do Sul</option>
				    	<option value="RO">Rondônia</option>
				    	<option value="RR">Roraima</option>
				    	<option value="SC">Santa Catarina</option>
				    	<option value="SP">São Paulo</option>
				    	<option value="SE">Sergipe</option>
				    	<option value="TO">Tocantins</option>
                  	  </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="sexo" class="col-sm-2 col-form-label">Sexo</label>
                    <div class="col-sm-9">
                      <select name="sexo" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="0" selected="selected" data-select2-id="3">Masculino</option>
                    	<option value="1">Feminino</option>
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
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Relacionamento</label>
                    <div class="col-sm-9">
                      <select name="estadocivil" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="Solteiro" selected="selected" data-select2-id="3">Solteiro</option>
                    	<option value="Casado">Casado</option>
                    	<option value="Amansiado">Amansiado</option>
                    	<option value="Divorciado">Divorciado</option>
                    	<option value="Casado">Viúvo</option>
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Escolaridade</label>
                    <div class="col-sm-9">
                      <select name="escolaridade" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="Primeiro Grau" selected="selected" data-select2-id="3">Primeiro Grau</option>
                    	<option value="Primeiro Grau Incompleto">Primeiro Grau Incompleto</option>
                    	<option value="Segundo Grau">Segundo Grau</option>
                    	<option value="Segundo Grau Incompleto">Segundo Grau Incompleto</option>
                    	<option value="Superior">Superior</option>
                    	<option value="Superior Incompleto">Superior Incompleto</option>
                    	<option value="Pós-Graduação">Pós-Graduação</option>
                    	<option value="Pós-Graduação Incompleto">Pós-Graduação Incompleto</option>
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Profissão</label>
                    <div class="col-sm-9">
                      <input type="text" name="profissao" class="form-control" id="inputEmail3" value="<%= pessoa.getProfissao() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Condição de Ocupação</label>
                    <div class="col-sm-9">
                      <select name="condicaoocupacao" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="Empregado" selected="selected" data-select2-id="3">Empregado</option>
                    	<option value="Desempregado">Desempregado</option>
                    	<option value="Estagiário">Estagiário</option>
                    	<option value="Estudante">Estudante</option>
                    	<option value="Aposentado">Aposentado</option>
                    	<option value="Pensionista">Pensionista</option>
                    	<option value="Pensionista">Benefício Previdenciário</option>
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Região de Moradia</label>
                    <div class="col-sm-9">
                      <select name="zonamoradia" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="Empregado" selected="selected" data-select2-id="3">Zona Urbana</option>
                    	<option value="Desempregado">Zona Rural</option>
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
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Endereço</label>
                    <div class="col-sm-9">
                      <input type="text" name="logradouro" class="form-control" id="inputEmail3" required="required" value="<%= pessoa.getLogradouro() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Número</label>
                    <div class="col-sm-9">
                      <input type="text" name="numero" class="form-control" id="inputEmail3" required="required" value="<%= pessoa.getNumero() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Complemento</label>
                    <div class="col-sm-9">
                      <input type="text" name="complemento" class="form-control" id="inputEmail3" value="<%= pessoa.getComplemento() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Bairro</label>
                    <div class="col-sm-9">
                      <input type="text" name="bairro" class="form-control" id="inputEmail3" required="required" value="<%= pessoa.getBairro() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">CEP</label>
                    <div class="col-sm-9">
                      <input type="text" name="cep" class="form-control" id="inputEmail3" required="required" value="<%= pessoa.getCep() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Cidade</label>
                    <div class="col-sm-9">
                      <input type="text" name="cidade" class="form-control" id="inputEmail3" required="required" value="<%= pessoa.getCidade() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Estado</label>
                    <div class="col-sm-9">
                      <select name="ufcidade" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="AC" data-select2-id="3" selected="selected">Acre</option>
    					<option value="AL">Alagoas</option>
    					<option value="AP">Amapá</option>
				    	<option value="AM">Amazonas</option>
				    	<option value="BA">Bahia</option>
				    	<option value="CE">Ceará</option>
				    	<option value="DF">Distrito Federal</option>
				   		<option value="ES">Espirito Santo</option>
				    	<option value="GO">Goiás</option>
				    	<option value="MA">Maranhão</option>
				    	<option value="MS">Mato Grosso do Sul</option>
				    	<option value="MT">Mato Grosso</option>
				    	<option value="MG">Minas Gerais</option>
				    	<option value="PA">Pará</option>
				    	<option value="PB">Paraíba</option>
				    	<option value="PR">Paraná</option>
				    	<option value="PE">Pernambuco</option>
				    	<option value="PI">Piauí</option>
				    	<option value="RJ">Rio de Janeiro</option>
				    	<option value="RN">Rio Grande do Norte</option>
				    	<option value="RS">Rio Grande do Sul</option>
				    	<option value="RO">Rondônia</option>
				    	<option value="RR">Roraima</option>
				    	<option value="SC">Santa Catarina</option>
				    	<option value="SP">São Paulo</option>
				    	<option value="SE">Sergipe</option>
				    	<option value="TO">Tocantins</option>
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
                    <label for="inputEmail3" class="col-sm-2 col-form-label">E-mail</label>
                    <div class="col-sm-9">
                      <input type="text" name="email" class="form-control" id="inputEmail3" value="<%= pessoa.getEmail() %>">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Celular</label>
                    <div class="col-sm-9">
                      <input type="text" name="telefonecelular" class="form-control" id="inputEmail3" required="required" value="<%= pessoa.getTelefonecelular() %>">
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
    