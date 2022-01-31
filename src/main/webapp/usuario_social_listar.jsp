<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="br.com.suasdigital.util.TimeStamp"%>
<%@page import="br.com.suasdigital.controle.Facade"%>
<%@page import="br.com.suasdigital.modelo.Pessoa"%>
<%@page import="java.util.List"%>
	
<%TimeStamp data = new TimeStamp();%>

<%
 List<Pessoa> pessoas = Facade.getInstance().getControlePessoa().ControleListaPessoa();
%>

<%
 String status = request.getParameter("status");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/views/common/include/meta.jsp"%><!-- 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
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
				<%-- <% if(status.equals("1")) { %>
					<br>
				<div class="alert alert-success alert-dismissable">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				    <i class="icon fa fa-check"></i> Dados do aluno atualizados com sucesso!             
				</div>
				<%} %> --%>
				<div class="row mb-2">
					<div class="col-sm-6">          
						<h1>
							<i class="fas fa-search mr-3 ml-2"></i>Pesquisar Usuário Social
						</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Usuário Social</a></li>
							<li class="breadcrumb-item active">Pesquisar Usuário Social</li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /.container-fluid --> </section>

			<!-- Main content -->
			<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card card-outline card-secondary">
							<div class="card-header">
								<h3 class="card-title"></h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12">
											<table id="example1"
												class="table table-bordered table-striped dataTable dtr-inline"
												role="grid" aria-describedby="example1_info">
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
													<%
														for(Pessoa p: pessoas) {
													%>
													<tr>
														<td><%=p.getIdpessoa() %></td>
														<td><%=p.getNome() %></td>
														<td><%=p.getCpf() %></td>
														<td><%=p.getNis() %></td>
														<td><%=data.ConverteFormatoDataUSparaBR(p.getDatanascimento())%></td>
														<td><%=p.getTelefonecelular() %></td>
														<td><div class="btn-group">
																<a onclick="visualisar('<%=p.getIdpessoa()%>',
																					   '<%=p.getNome()%>',
																					   '<%=p.getRg()%>',
																					   '<%=p.getCpf()%>',
																					   '<%=p.getNis()%>',
																					   '<%=data.ConverteFormatoDataUSparaBR(p.getDatanascimento())%>',
																					   '<%=p.getNaturalidade()%>',
																					   '<%=p.getUfnascimento()%>',
																					   '<%=p.getSexo()%>',
																					   '<%=p.getFoto()%>',
																					   '<%=p.getEstadocivil()%>',
																					   '<%=p.getEscolaridade()%>',
																					   '<%=p.getProfissao()%>',
																					   '<%=p.getCondicaoocupacao()%>',
																					   '<%=p.getZonamoradia()%>',
																					   '<%=p.getLogradouro()%>',
																					   '<%=p.getNumero()%>',
																					   '<%=p.getComplemento()%>',
																					   '<%=p.getBairro()%>',
																					   '<%=p.getCep()%>',
																					   '<%=p.getCidade()%>',
																					   '<%=p.getUfcidade()%>',
																					   '<%=p.getEmail()%>',
																					   '<%=p.getTelefonecelular()%>')" 
																	type="button" class="btn btn-info" data-toggle="modal"
																	data-target="#modalVisualisar" title="Visualizar">
																	<i class="fas fa-user"></i>
																</a> 
																<a href="usuario_social_editar.jsp?idpessoa=<%=p.getIdpessoa() %>"
																	type="button" class="btn btn-warning" title="Editar">
																	<i class="fas fa-user-edit"></i>
																</a> 
																<button onclick="excluir('<%= p.getIdpessoa() %>','<%= p.getNome() %>')" 
																	type="button" class="btn btn-danger"  data-toggle="modal"
																	data-target="#modalExcluir"  title="Exluir">
																	<i class="fas fa-user-times"></i>
																</button>
															</div> 
														</td>
													</tr>
													<%} %>
												</tbody>
											</table>
										</div>
									</div>									
								</div>
							</div>
							<!-- /.card-body -->
						</div>


						<%-- <div class="card card-outline card-secondary">
							<div class="card-header">
								<!-- <div class="card-tools">
									<div class="input-group input-group-sm" style="width: 250px;">
										<input type="text" name="table_search"
											class="form-control float-right" placeholder="Digite o CPF">
										<div class="input-group-append">
											<button type="submit" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
								</div> -->
							</div>
							<!-- /.card-header -->
							<div class="card-body table-responsive p-0">							
								<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
									<table id="example1" class="table table-hover text-nowrap">
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
													<a onclick="visualisar('<%=p.getIdpessoa()%>',
																		   '<%=p.getNome()%>',
																		   '<%=p.getRg()%>',
																		   '<%=p.getCpf()%>',
																		   '<%=p.getNis()%>',
																		   '<%=data.ConverteFormatoDataUSparaBR(p.getDatanascimento())%>',
																		   '<%=p.getNaturalidade()%>',
																		   '<%=p.getUfnascimento()%>',
																		   '<%=p.getSexo()%>',
																		   '<%=p.getFoto()%>',
																		   '<%=p.getEstadocivil()%>',
																		   '<%=p.getEscolaridade()%>',
																		   '<%=p.getProfissao()%>',
																		   '<%=p.getCondicaoocupacao()%>',
																		   '<%=p.getZonamoradia()%>',
																		   '<%=p.getLogradouro()%>',
																		   '<%=p.getNumero()%>',
																		   '<%=p.getComplemento()%>',
																		   '<%=p.getBairro()%>',
																		   '<%=p.getCep()%>',
																		   '<%=p.getCidade()%>',
																		   '<%=p.getUfcidade()%>',
																		   '<%=p.getEmail()%>',
																		   '<%=p.getTelefonecelular()%>')" 
														type="button" class="btn btn-info" data-toggle="modal"
														data-target="#modalVisualisar" title="Visualizar">
														<i class="fas fa-user"></i>
													</a> 
													<a href="usuario_social_editar.jsp?idpessoa=<%=p.getIdpessoa() %>"
														type="button" class="btn btn-warning" title="Editar">
														<i class="fas fa-user-edit"></i>
													</a> 
													<button onclick="excluir('<%= p.getIdpessoa() %>','<%= p.getNome() %>')" 
														type="button" class="btn btn-danger"  data-toggle="modal"
														data-target="#modalExcluir"  title="Exluir">
														<i class="fas fa-user-times"></i>
													</button>
												</div> 
											</td>
										</tr>
										<%} %>
									</tbody>
								</table>
								</div>
							</div>
						  </div> --%>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid --> </section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		
		<!-- Modal Visualisar -->
		<div class="modal fade" id="modalVisualisar" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="card card-widget widget-user-2">
					<!-- Add the bg color to the header using any of the bg-* classes -->
					<div class="widget-user-header bg-info">
						<div class="widget-user-image">
							<img class="img-circle elevation-2 mr-2 ml-2"
								src="dist/img/user9-128x128.png" alt="User Avatar" width="128"> <br>
							<h4 id="nome"></h4>
							<p align="left">
								<b>CPF: </b><i id="cpf"></i> | 
								<b>Nis: </b><i id="nis"></i>
							</p>
						</div>
					</div>
					<div class="card-footer p-0">
						<div class="card-footer">
							<div class="row mt-3">
								<div class="col-sm-6 border-right">
									<p>
										<b>RG: </b><i id="rg"></i><br>
										<b>Nascimento: </b><i id="datanascimento"></i><br>
										<b>Natural: </b><i id="naturalidade"></i><br>
										<b>UF: </b><i id="ufnascimento"></i><br>
										<b>Sexo: </b><i id="sexo"></i><br>
										<b>Estadocivil: </b><i id="estadocivil"></i><br>
										<b>Escolaridade: </b><i id="escolaridade"></i><br>
										<b>Profissão: </b><i id="profissao"></i><br>
										<b>Ocupacional: </b><i id="condicaoocupacao"></i><br>
										<b>Zona: </b><i id="zonamoradia"></i><br>
									</p>
								</div>
								<div class="col-sm-6">
									<p>
										<b>Endereço: </b><i id="logradouro"></i><br>
										<b>N: </b><i id="numero"></i><br>
										<b>Complemento: </b><i id="complemento"></i><br>
										<b>Bairro: </b><i id="bairro"></i><br>
										<b>CEP: </b><i id="cep"></i><br>
										<b>Cidade: </b><i id="cidade"></i><br>
										<b>UF: </b><i id="ufcidade"></i><br>
										<b>E-mail: </b><i id="email"></i><br>
										<b>Celular: </b><i id="telefonecelular"></i><br>
									</p>
								</div>									
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Modal Excluir-->
		<div class="modal fade" id="modalExcluir" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header bg-danger">
						<h3 class="modal-title" id="modalExcluir">Atenção!</h3>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body" align="center">
						<br>
						<h4>Você deseja mesmo excluir o usúario</h4>
						<br>
						<h4>
							<i id="name"></i>
						</h4>
					</div>
					<div class="modal-footer bg-light" >
						<form action="index.jsp" method="post">
							<input id="id" type="hidden">
							<button type="submit" class="btn btn-danger">Excluir</button>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Sair</button>
						</form>
					</div>
				</div>
			</div>
		</div>		

		<script type="text/javascript">
		
		function excluir(id, name) {
			
			document.getElementById('id').innerHTML = id;
			document.getElementById('name').innerHTML = name;
			
			console.log(id,nome);
		}
		
			 function visualisar(idpessoa, nome, rg, cpf, nis, datanascimento, naturalidade, ufnascimento, sexo, foto, estadocivil, escolaridade, profissao, condicaoocupacao, zonamoradia, logradouro, numero, complemento, bairro, cep, cidade, ufcidade, email, telefonecelular,) {
					 
				//document.getElementById('id').innerHTML = idpessoa;
				document.getElementById('nome').innerHTML = nome;
				document.getElementById('rg').innerHTML = rg;
				document.getElementById('cpf').innerHTML = cpf;
				document.getElementById('nis').innerHTML = nis;
				document.getElementById('datanascimento').innerHTML = datanascimento;
				document.getElementById('naturalidade').innerHTML = naturalidade;
				document.getElementById('ufnascimento').innerHTML = ufnascimento;
				document.getElementById('sexo').innerHTML = sexo;
				//document.getElementById('foto').innerHTML = foto;
				document.getElementById('estadocivil').innerHTML = estadocivil;
				document.getElementById('escolaridade').innerHTML = escolaridade;
				document.getElementById('profissao').innerHTML = profissao;
				document.getElementById('condicaoocupacao').innerHTML = condicaoocupacao;
				document.getElementById('zonamoradia').innerHTML = zonamoradia;
				document.getElementById('logradouro').innerHTML = logradouro;
				document.getElementById('numero').innerHTML = numero;
				document.getElementById('complemento').innerHTML = complemento;
				document.getElementById('bairro').innerHTML = bairro;
				document.getElementById('cep').innerHTML = cep;
				document.getElementById('cidade').innerHTML = cidade;
				document.getElementById('ufcidade').innerHTML = ufcidade;
				document.getElementById('email').innerHTML = email;
				document.getElementById('telefonecelular').innerHTML = telefonecelular;
			}		 
			
		</script>

		<!-- footer -->
		<%@include file="/WEB-INF/views/common/include/footer.jsp"%>
		<!-- /footer -->

		<!-- Control Sidebar -->
		<%@include file="/WEB-INF/views/common/include/control-sidebar.jsp"%>
		<!-- /.control-sidebar -->
	</div>

	<!-- scripts -->
	<%@include file="WEB-INF/views/common/include/script.jsp"%>
	<!-- /scripts -->

</body>
</html>