<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cadastrar Usuário</title>
  <%@include file="/WEB-INF/views/common/include/meta.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <%@ include file="/WEB-INF/views/common/include/header.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@include file="/WEB-INF/views/common/include/aside.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastrar Usuário Social</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Usuário Social</a></li>
              <li class="breadcrumb-item active">Cadastrar Usuário Social</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
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
              <form role="form" class="form-horizontal of">
                <div class="card-body" style="margin-left: 50px;">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Nome completo">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">RG</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Número do RG">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">CPF</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Número do CPF">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">NIS</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Número do NIS">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nascimento</label>
                    <div class="col-sm-9">
                      <input type="date" class="form-control">	
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Naturalidade</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Cidade de nascimento">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Estado de nascimento</label>
                    <div class="col-sm-9">
                      <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option selected="selected" data-select2-id="3">Estado</option>
                    	<option>Alabama</option>
                    	<option>California</option>
                    	<option>Delaware</option>
                    	<option>Tennessee</option>
                    	<option>Texas</option>
                    	<option>Washington</option>
                  	  </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Sexo</label>
                    <div class="col-sm-9">
                      <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option selected="selected" data-select2-id="3">Sexo</option>
                    	<option>Masculino</option>
                    	<option>Feminino</option>
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
                      <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
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
                      <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option value="Primeiro Grau" selected="selected" data-select2-id="3">Primeiro Grau </option>
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
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Profissão">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Escolaridade</label>
                    <div class="col-sm-9">
                      <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
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
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Rua, Avenida, Travessa, Praça">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Número</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Número">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Complemento</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Edificio, Nº Apartamento">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Bairro</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Bairro | Distrito | Comunidade">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">CEP</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Nº de CEP">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Cidade</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="Cidade">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Estado</label>
                    <div class="col-sm-9">
                      <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    	<option selected="selected" data-select2-id="3">Estado</option>
                    	<option>Alabama</option>
                    	<option>California</option>
                    	<option>Delaware</option>
                    	<option>Tennessee</option>
                    	<option>Texas</option>
                    	<option>Washington</option>
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
                      <input type="text" class="form-control" id="inputEmail3" placeholder="@email.com">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">WhatsApp</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="inputEmail3" placeholder="WhatsApp">
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
    <!-- /.content -->
  </div>  
  <!-- /.content-wrapper -->
  
  <!-- footer -->
  <%@include file="WEB-INF/views/common/include/footer.jsp"%>
  <!-- /footer -->
  	
  <!-- Control Sidebar -->
  <%@include file="WEB-INF/views/common/include/control-sidebar.jsp"%>
  <!-- /.control-sidebar -->
</div>

  <!-- scripts -->
  <%@include file="/WEB-INF/views/common/include/script.jsp"%>
  <!-- /scripts -->

</body>
</html>