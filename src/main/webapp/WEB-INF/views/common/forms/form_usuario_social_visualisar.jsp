<%@page import="br.com.suasdigital.util.TimeStamp"%>
<%@page import="br.com.suasdigital.controle.Facade"%>
<%@page import="br.com.suasdigital.modelo.Pessoa"%>

<% Pessoa pessoa = Facade.getInstance().getControlePessoa().ControleBuscaPessoaPorId(Long.parseLong(request.getParameter("idpessoa"))); %>

<% TimeStamp dnascimento = new TimeStamp();%>


	<div class="card card-widget widget-user">
		<%-- <%@ include file="WEB-INF/views/common/forms/form_usuario_social_visualisar.jsp" %>	 --%>
		<!-- Add the bg color to the header using any of the bg-* classes -->
		<div class="widget-user-header bg-info">
			<h3 class="widget-user-username">Alexander Pierce</h3>
			<h5 class="widget-user-desc">Founder &amp; CEO</h5>
		</div>
		<div class="widget-user-image">
			<img class="img-circle elevation-2" src="dist/img/user1-128x128.jpg"
				alt="User Avatar">
		</div>
		<div class="card-footer">
			<div class="row">
				<div class="col-sm-4 border-right">
					<div class="description-block">
						<h5 class="description-header">3,200</h5>
						<span class="description-text">SALES</span>
					</div>
					<!-- /.description-block -->
				</div>
				<!-- /.col -->
				<div class="col-sm-4 border-right">
					<div class="description-block">
						<h5 class="description-header">13,000</h5>
						<span class="description-text">FOLLOWERS</span>
					</div>
					<!-- /.description-block -->
				</div>
				<!-- /.col -->
				<div class="col-sm-4">
					<div class="description-block">
						<h5 class="description-header">35</h5>
						<span class="description-text">PRODUCTS</span>
					</div>
					<!-- /.description-block -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
	</div>




