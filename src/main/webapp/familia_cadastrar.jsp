<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="/WEB-INF/views/common/include/meta.jsp"%>
  	<title>Cadastrar Família</title>  
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <%@ include file="/WEB-INF/views/common/include/header.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@include file="/WEB-INF/views/common/include/aside.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-top: 0px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">         	
          <div class="col-sm-6">         
          	<h1><i class="fas fas fa-users mr-3 ml-2"></i>Cadastrar Família</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a>Família</a></li>
              <li class="breadcrumb-item active">Cadastrar Família</li>
            </ol>
            
          	<%-- <% if(status.equals("1")) {%>
            	<br>            
				<div class="alert alert-success alert-dismissible fade show" role="alert">
  					<i class="icon fa fa-check"></i>
  					<strong>Usuário</strong> cadastrado com sucesso!
  					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
   						<span aria-hidden="true">&times;</span>
  					</button>
				</div>
            <% } %>   --%>
                       
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <jsp:include page="WEB-INF/views/common/forms/NewFile.jsp"></jsp:include>
    <!-- /.content -->
  </div>  
  <!-- /.content-wrapper -->
  
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
  
    
  <!-- Consulta ao banco com Ajax, JQuery com em Json -->
<script type="text/javascript">  		

	$(document).ready(function() {
		$('#idUsuarioReferencia').blur(function() {
			
			inputClear();

			if ($('#idUsuarioReferencia').val() == "") {
				alert("Campo id do usuario não pode ficar em branco");
			} else {
				
				alertClose();
				inputClear();

				$.ajax({
					type : 'POST',
					dataType : 'JSON',
					data : {
						idUserReferencia : $('#idUsuarioReferencia').val()
					},
					url : 'ServletPesquisaUsuarioReferencia',
					success : function(data) {
						var pessoa = data;
						$('#nome').val(pessoa.nome);
						$('#cpf').val(pessoa.cpf);
						$('#nis').val(pessoa.nis);
					},
					error : function(data) {
						$("#msg").html(data.responseText);
						$("#alert").attr("hidden", false);
					}
				});
			}
		});
	});

	function alertClose() {
		$(".alert").attr("hidden", true);
	}

	function inputClear() {
		$('#nome').val("");
		$('#cpf').val("");
		$('#nis').val("");
		$("#alert").css("display", "")
	}
</script>
</body>
</html>