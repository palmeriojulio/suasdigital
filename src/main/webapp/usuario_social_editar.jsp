<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt_br">
<head>
	<%@include file="/WEB-INF/views/common/include/meta.jsp"%>
  	<title>Editar Usuário Social</title>  
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
          	<h1><i class="fas fa-user mr-3 ml-2"></i></i>Editar Usuário Social</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"> Usuário Social</a></li>
              <li class="breadcrumb-item active">Editar Usuário Social</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <jsp:include page="WEB-INF/views/common/forms/form_usuario_social_editar.jsp"></jsp:include>
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

</body>
</html>