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
                <h2 class="card-title">Dados da Família New</h2>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" class="form-horizontal of" action="ServletCastraFamilia" method="post">
                  
                <div class="card-body"> 
                                
                  <div class="form-group row">                      
	                  <div hidden="" id="alert" class="offset-md-2 col-sm-9 alert alert-warning " role="alert">
						<span id="msg"></span> não está cadastrado!
						<button type="button" class="close" aria-label="Close" onclick="alertClose()">
						  <span>&times;</span>	
						</button>
					  </div>    
				  </div>         
                  
                  <div class="form-group row">
                    <label for="userreferencia" class="col-sm-2 col-form-label">Usuário referência</label>
                    <div class="col-sm-9">
                      <input type="number" name="idUsuarioReferencia" class="form-control" id="idUsuarioReferencia" required="required" 
                      placeholder="Código do Usuário Referência" maxlength="5">
                    </div>                    
                  </div>
                             
                  <div class="form-group row">
                    <label for="nome" class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-9">
                      <input type="text" name="nome" class="form-control" id="nome" required="required" placeholder="Nome completo" maxlength="100" disabled="disabled">
                    </div>
                  </div>   
                                 
                  <div class="form-group row">
                    <label for="cpf" class="col-sm-2 col-form-label">CPF</label>
                    <div class="col-sm-9">
                      <input type="text" name="cpf" class="form-control" id="cpf" required="required" placeholder="Número do CPF" disabled="disabled">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="nis" class="col-sm-2 col-form-label">NIS</label>
                    <div class="col-sm-9">
                      <input type="text" name="nis" class="form-control" id="nis" required="required" placeholder="Número do NIS" disabled="disabled">
                    </div>
                  </div>
                                   
                  <div class="form-group row">
                    <label for="sexo" class="col-sm-2 col-form-label">Orgiem de Família</label>
                    <div class="col-sm-9">
                      <select name="origem_familia" required="required" class="form-control select2 select2-hidden-accessible" style="width: 100%;" aria-hidden="true">
                      <option value="">Orgiem de Família</option>
                      <option value="Comum">Comum</option>
                      <option value="Lixão">Lixão</option>
                      <option value="Situação de Rua">Situação de Rua</option>
                      <option value="Quilombola">Quilombola</option>
                      <option value="Ribeirinha">Ribeirinha</option>
                      <option value="Cigana">Cigana</option> 
                      <option value="Índigena-Reside em Aldeia">Índigena-Reside em Aldeia</option> 
                      <option value="Índigena-Não Reside em Aldei">Índigena-Não Reside em Aldeia</option>                    
                  </select>
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">CRAS</label>
                    <div class="col-sm-9">
                      <input type="text" name="cras" class="form-control" id="cras" required="required" placeholder="CRAS da Família" maxlength="50">
                    </div>
                  </div>
                                    
                  <div class="form-group row">
                  	<label for="" class="col-sm-2 col-form-label">Observações</label>
                  	<div class="col-sm-9">                  		
                    	<textarea name="obs" class="form-control" rows="3" placeholder="Enter ..." spellcheck="false"></textarea>
                  	</div> 
                  </div>  
                                				                 
                </div> 
				<div class="card-footer">
                  <button type="submit" class="btn btn-secondary">Cadastrar</button>
                </div>               
                <!-- /.card-footer -->                
              </form>
             </div>
            </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section> 