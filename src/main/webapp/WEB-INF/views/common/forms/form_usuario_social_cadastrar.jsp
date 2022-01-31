<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
              <form role="form" class="form-horizontal of" action="ServletCadastroPessoa" method="post">
                <div class="card-body" style="margin-left: 50px;">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-9">
                      <input type="text" name="nome" class="form-control" id="nome" required="required" placeholder="Nome completo" maxlength="100">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">RG</label>
                    <div class="col-sm-9">
                      <input type="text" name="rg" class="form-control" id="rg" required="required" placeholder="Número do RG">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">CPF</label>
                    <div class="col-sm-9">
                      <input type="text" name="cpf" class="form-control" id="cpf" required="required" placeholder="Número do CPF">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">NIS</label>
                    <div class="col-sm-9">
                      <input type="text" name="nis" class="form-control" id="nis" required="required" placeholder="Número do NIS">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="datanascimento" class="col-sm-2 col-form-label">Nascimento</label>
                    <div class="col-sm-9">
                      <input type="date" name="datanascimento" class="form-control" required="required">	
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="naturalidade" class="col-sm-2 col-form-label">Naturalidade</label>
                    <div class="col-sm-9">
                      <input type="text" name="naturalidade" class="form-control" id="naturalidade" placeholder="Cidade de nascimento" maxlength="20">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Estado de nascimento</label>
                    <div class="col-sm-9">
                      <select id="ufnascimento" name="ufnascimento" class="form-control select2 select2-hidden-accessible" 
                      		  style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">                    	
    					<option value="AC">Acre</option>
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
                    	<option value="M" selected="selected" data-select2-id="3">Masculino</option>
                    	<option value="F">Feminino</option>
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
                    	<option value="">Escolaridade</option>
                    	<option value="Nunca frequentou escola">Nunca frequentou escola</option>
						<option value="Creche">Creche</option>
						<option value="Educação Infantil">Educação Infantil</option>
						<option value="1º ano E. Fundamental">1º ano E. Fundamental</option>
						<option value="2º ano E. Fundamental">2º ano E. Fundamental</option>
						<option value="3º ano E. Fundamental">3º ano E. Fundamental</option>
						<option value="4º ano E. Fundamental">4º ano E. Fundamental</option>
						<option value="5º ano E. Fundamental">5º ano E. Fundamental</option>
						<option value="6º ano E. Fundamental">6º ano E. Fundamental</option>
						<option value="7º ano E. Fundamental">7º ano E. Fundamental</option>
						<option value="8º ano E. Fundamental">8º ano E. Fundamental</option>
						<option value="9º ano E. Fundamental">9º ano E. Fundamental</option>
						<option value="1º ano E. Médio">1º ano E. Médio</option>
						<option value="2º ano E. Médio">2º ano E. Médio</option>
						<option value="3º ano E. Médio">3º ano E. Médio</option>
						<option value="Superior Incompleto">Superior Incompleto</option>
						<option value="Superior Completo">Superior Completo</option>
						<option value="EJA – Ensino Fundamental">EJA – Ensino Fundamental</option>
						<option value="EJA – Ensino Médio">EJA – Ensino Médio</option>
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Profissão</label>
                    <div class="col-sm-9">
                      <input type="text" name="profissao" class="form-control" id="profissao" placeholder="Profissão" maxlength="30">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Condição de Ocupação</label>
                    <div class="col-sm-9">
                      <select name="condicaoocupacao" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="">Condição de Ocupação</option>
                    	<option value="Não Trabalha">Não Trabalha</option>
						<option value="Trabalhador por conta própria (bico, autônomo)">Trabalhador por conta própria (bico, autônomo)</option> 
						<option value="Trabalhador temporário em área rural">Trabalhador temporário em área rural</option>
						<option value="Empregado sem carteira de trabalho assinada">Empregado sem carteira de trabalho assinada</option>
						<option value="Empregado com carteira de trabalho assinada">Empregado com carteira de trabalho assinada</option> 
						<option value="Trabalhador doméstico sem carteira de trabalho assinada">Trabalhador doméstico sem carteira de trabalho assinada</option> 
						<option value="Trabalhador doméstico com carteira de trabalho assinada">Trabalhador doméstico com carteira de trabalho assinada</option> 
						<option value="Trabalhador não-remunerado">Trabalhador não-remunerado</option> 
						<option value="Militar ou servidor público">Militar ou servidor público</option>
						<option value="Empregador">Empregador</option>
						<option value="Estagiário">Estagiário</option>
						<option value="Aprendiz (em condição legal)">Aprendiz (em condição legal)</option>
                  	  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Região de Moradia</label>
                    <div class="col-sm-9">
                      <select name="zonamoradia" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="Zona Urbana" selected="selected" data-select2-id="3">Zona Urbana</option>
                    	<option value="Zona Rural">Zona Rural</option>
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
                      <input type="text" name="logradouro" class="form-control" id="endereco" required="required" placeholder="Rua, Avenida, Travessa, Praça" maxlength="70">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Número</label>
                    <div class="col-sm-9">
                      <input type="text" name="numero" class="form-control" id="numero" required="required" placeholder="Número" maxlength="4">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Complemento</label>
                    <div class="col-sm-9">
                      <input type="text" name="complemento" class="form-control" id="complemento" placeholder="Edificio, Nº Apartamento" maxlength="40">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Bairro</label>
                    <div class="col-sm-9">
                      <input type="text" name="bairro" class="form-control" id="bairro" required="required" placeholder="Bairro | Distrito | Comunidade" maxlength="40">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="cep" class="col-sm-2 col-form-label">CEP</label>
                    <div class="col-sm-9">
                      <input type="text" name="cep" class="form-control" id="cep" required="required" placeholder="Nº de CEP">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Cidade</label>
                    <div class="col-sm-9">
                      <input type="text" name="cidade" class="form-control" id="cidade" required="required" placeholder="Cidade">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Estado</label>
                    <div class="col-sm-9">
                      <select name="ufcidade" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="AC">Acre</option>
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
                      <input type="text" name="email" class="form-control" id="inputEmail3" placeholder="@email.com">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Celular</label>
                    <div class="col-sm-9">
                      <input type="text" name="telefonecelular" class="form-control" id="telefonecelular" required="required" placeholder="00-0-0000-0000">
                    </div>
                  </div>                  
                  
                </div>        
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-secondary">Cadastrar</button>
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
    
