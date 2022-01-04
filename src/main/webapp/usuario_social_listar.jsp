<%@page import="br.com.suasdigital.util.TimeStamp"%>
<%@page import="br.com.suasdigital.controle.Facade"%>
<%@page import="br.com.suasdigital.modelo.Pessoa"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<% TimeStamp data = new TimeStamp(); %>

<% List<Pessoa> pessoas = Facade.getInstance().getControlePessoa().ControleListaPessoa(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/views/common/include/meta.jsp"%>
<title>Lista de Usuários</title>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="/WEB-INF/views/common/include/header.jsp"%>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@include file="/WEB-INF/views/common/include/aside.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1302.12px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1><i class="fas fa-search mr-3 ml-2"></i>Pesquisar Usuário Social</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Usuário Social</a></li>
							<li class="breadcrumb-item active">Pesquisar Usuário Social</li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /.container-fluid --> 
			</section>

			<!-- Main content -->
			<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card card-outline card-secondary">
							<div class="card-header">
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 250px;">
										<input type="text" name="table_search"
											class="form-control float-right" placeholder="Digite o CPF">
										<div class="input-group-append">
											<button type="submit" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body table-responsive p-0">
								<table class="table table-hover text-nowrap">
									<thead>
										<tr>
											<th style="width: 10px">ID</th>
											<th>Nome</th>
											<th>CPF</th>
											<th>NIS</th>
											<th>Data Nascimento</th>
											<th>Celular</th>
											<th style="width: 20px; position: relative;">Ações</th>
										</tr>
									</thead>
									<tbody>
									<% for(Pessoa p: pessoas) { %>
										<tr>
											<td><%=p.getIdpessoa() %></td>
											<td><%=p.getNome() %></td>
											<td><%=p.getCpf() %></td>
											<td><%=p.getNis() %></td>
											<td><%=data.ConverteFormatoDataUSparaBR(p.getDatanascimento())%></td>
											<td><%=p.getTelefonecelular() %></td>
											<td><div class="btn-group">
												<button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-lg"title="Visualizar">
													<i class="fas fa-address-card"></i>
												</button>
												<a href="usuario_social_editar.jsp?idpessoa=<%=p.getIdpessoa() %>" type="button" class="btn btn-warning" title="Editar">
													<i class="fas fa-user-edit"></i>
												</a>
												<button type="button" class="btn btn-danger" title="Exluir">
													<i class="fas fa-user-times"></i>
												</button>												
												</div>
											</td>
										</tr>
									 <%} %>
									</tbody>
								</table>		
							</div>
							<!-- /.card-body -->
							<div class="card-footer clearfix">
								<ul class="pagination pagination-sm m-0 float-right">
									<li class="page-item"><a class="page-link" href="#">«</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">»</a></li>
								</ul>
							</div>
						</div>
						<!-- /.card -->						
					</div>
					<!-- /.col -->					
				</div>							
				<!-- /.row -->				
			</div>
			<!-- /.container-fluid --> 
		 	</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		
		
			
		<%-- <div class="modal fade" id="modal-xl">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Editar Cadastro</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <jsp:include page="WEB-INF/views/common/forms/form_usuario_social_alterar.jsp"></jsp:include>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
              <button type="button" class="btn btn-primary">Salvar Mudanças</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      <div class="modal fade" id="modal-lg">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Extra Large Modal</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        		<button type="button" class="btn btn-primary">Save changes</button>
      		</div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->	 --%>		
		
		

		<!-- footer -->
		<%@include file="/WEB-INF/views/common/include/footer.jsp"%>
		<!-- /footer -->

		<!-- Control Sidebar -->
		<%@include file="/WEB-INF/views/common/include/control-sidebar.jsp"%>
		<!-- /.control-sidebar -->
	</div>

	<!-- scripts -->
	<%@include file="/WEB-INF/views/common/include/script.jsp"%>
	<!-- /scripts -->

</body>
</html>