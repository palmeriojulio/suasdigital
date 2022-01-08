<%@page import="br.com.suasdigital.util.TimeStamp"%>
<%@page import="br.com.suasdigital.controle.Facade"%>
<%@page import="br.com.suasdigital.modelo.Pessoa"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<% TimeStamp data = new TimeStamp(); %>

<% List<Pessoa> pessoas = Facade.getInstance().getControlePessoa().ControleListaPessoa(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt_br">
<head>
<%@include file="/WEB-INF/views/common/include/meta.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
													<a type="button" class="btn btn-danger" title="Exluir">
														<i class="fas fa-user-times"></i>
													</a>
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
							<img class="img-circle elevation-2 mr-2"
								src="dist/img/user7-128x128.jpg" alt="User Avatar"> <br>
							<h5 id="nome"></h5>
							<p>
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

		<script type="text/javascript">		
		
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