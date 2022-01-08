<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
	<a href="index.jsp" class="brand-link ml-2"> 
		<img src="dist/img/logo.png" width="150px">
	</a>

	<!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div> 
        <div class="info">
          <a class="d-block">Palm�rio J�lio</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->          
          
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p>
               Usu�rio Social
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="usuario_social_cadastrar.jsp" class="nav-link">
                  <i class="fa fa-user-plus nav-icon text-info ml-1"></i>
                  <p>Cadastrar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="usuario_social_listar.jsp" class="nav-link">
                  <i class="fa fa-search nav-icon text-info ml-1"></i>  
                  <p>Pesquisar</p>
                </a>
              </li>              
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Fam�lias
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/UI/general.html" class="nav-link">
                  <i class="fa fa-user-plus nav-icon text-info ml-1"></i>
                  <p>Cadastar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/icons.html" class="nav-link">
                  <i class="fa fa-search nav-icon text-info ml-1"></i>
                  <p>Pesquisar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/buttons.html" class="nav-link">
                  <i class="fa fa-users nav-icon text-info ml-1"></i>
                  <p>Composi��o Fam�lia</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/sliders.html" class="nav-link">
                  <i class="fas fa-home nav-icon text-info ml-1"></i>
                  <p>Condi��es Habitacionais</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/modals.html" class="nav-link">
                  <i class="fas fa-pencil-alt nav-icon text-info ml-1"></i>
                  <p>Condi��es Educacionais</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/navbar.html" class="nav-link">
                  <i class="fas fa-book-reader nav-icon text-info ml-1"></i>
                  <p>Bolsa Educacional</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/timeline.html" class="nav-link">
                  <i class="fas fa-people-carry nav-icon text-info ml-1"></i>
                  <p>Condi��es de Trabalho</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/ribbons.html" class="nav-link">
                  <i class="far fa-money-bill-alt nav-icon text-info ml-1"></i>
                  <p>Renda Fam�liar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/ribbons.html" class="nav-link">
                  <i class="fas fa-heartbeat nav-icon text-info ml-1"></i>
                  <p>Condi��es de Sa�de</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/ribbons.html" class="nav-link">
                  <i class="fas fa-first-aid nav-icon text-info ml-1"></i>
                  <p>Bolsa Sa�de</p>
                </a>
              </li>               
              <li class="nav-item">
                <a href="pages/UI/ribbons.html" class="nav-link">
                <i class="fas fa-money-check-alt nav-icon text-info ml-1"></i>
                  <p>Benef�cios Eventuais</p>
                </a>
              </li>              
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                CREAS
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">              
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="fas fa-fist-raised nav-icon text-info ml-1"></i>                  
                  <p>
                    Situa��es de Viol�ncia                    
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon text-info ml-2"></i>
                      <p>Quandro 1</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon text-info ml-2"></i>
                      <p>Quandro 2</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon text-info ml-2"></i>
                      <p>Quandro 3</p>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-laptop"></i>
              <p>
                Atendimentos
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/forms/general.html" class="nav-link">
                  <i class="fas fa-plus-square nav-icon text-info ml-1"></i>
                  <p>Cadastrar Tipo</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/advanced.html" class="nav-link">
                  <i class="fas fa-share-square nav-icon text-info ml-1"></i>                
                  <p>Iniciar Atendimento</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/editors.html" class="nav-link">
                  <i class="fa fa-search nav-icon text-info ml-1"></i>
                  <p>Pesquisar Atendimentos</p>
                </a>
              </li>              
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-handshake"></i>
              <p>
                Benef�cios Eventuais
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>            
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/tables/simple.html" class="nav-link">
                  <i class="fas fa-house-user nav-icon text-info ml-1"></i>	
                  <p>Aux�lio Aluguel</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/data.html" class="nav-link">
                  <i class="fas fa-baby nav-icon text-info ml-1"></i>
                  <p>Aux�lio Leite</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="fas fa-hands-helping nav-icon text-info ml-1"></i>
                  <p>Aux�lio Emerg�ncia</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="fas fa-baby-carriage nav-icon text-info ml-1"></i>
                  <p>Aux�lio Natalidade</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="fas fa-skull-crossbones nav-icon text-info ml-1"></i>
                  <p>Aux�lio Funeral</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="fas fa-utensils nav-icon text-info ml-1"></i>
                  <p>Cesta B�sica</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="fas fa-child nav-icon text-info ml-1"></i>
                  <p>Crian�a Feliz</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user-graduate"></i>
              <p>
                Cursos
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">              
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Tipo de curso
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Cadastrar Tipo</p>
                    </a>
                  </li>                  
                </ul>
              </li>
            </ul>
            <ul class="nav nav-treeview">              
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Curso
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Cadastrar Curso</p>
                    </a>
                  </li>                  
                </ul>
              </li>
            </ul>
            <ul class="nav nav-treeview">              
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Matricula
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Matricular Usu�rio</p>
                    </a>
                  </li>                  
                </ul>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-building"></i>
              <p>
                Departamentos
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/tables/simple.html" class="nav-link">
                  <i class="fas fa-plus-square nav-icon text-info ml-1"></i>
                  <p>Cadastrar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/data.html" class="nav-link">
                  <i class="fa fa-search nav-icon text-info ml-1"></i>
                  <p>Pesquisar</p>
                </a>
              </li>              
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-people-arrows"></i>
              <p>
                Profissional
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/tables/simple.html" class="nav-link">
                  <i class="fa fa-user-plus nav-icon text-info ml-1"></i> 
                  <p>Cadastrar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/data.html" class="nav-link">
                  <i class="fa fa-search nav-icon text-info ml-1"></i>
                  <p>Pesquisar</p>
                </a>
              </li>              
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-hand-point-right"></i>
              <p>
                Encaminhamento
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/tables/simple.html" class="nav-link">
                  <i class="fa fa-user-plus nav-icon text-info ml-1"></i> 
                  <p>Cadastrar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/data.html" class="nav-link">
                  <i class="fa fa-search nav-icon text-info ml-1"></i>
                  <p>Pesquisar</p>
                </a>
              </li>              
            </ul>
          </li>
          
          
          <li class="nav-header">CONFIGURA��ES</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Adcionar Usu�rio</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-warning"></i>
              <p>Relat�rios</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>Suporte do sistema</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  