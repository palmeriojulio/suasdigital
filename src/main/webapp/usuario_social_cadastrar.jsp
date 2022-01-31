<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String status = request.getParameter("status"); %>

<!DOCTYPE html>
<html>
<head>
	<%@include file="/WEB-INF/views/common/include/meta.jsp"%>
  	<title>Cadastrar Usuário Social</title>  
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
          	<h1><i class="fas fa-user-plus mr-3 ml-2"></i>Cadastrar Usuário Social</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Usuário Social</a></li>
              <li class="breadcrumb-item active">Cadastrar Usuário Social</li>
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
    <jsp:include page="WEB-INF/views/common/forms/form_usuario_social_cadastrar.jsp"></jsp:include>
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
  
    
  <!-- Mascaras -->
  <script type="text/javascript">
	
  	$("input[id*='telefonecelular']").inputmask({
		mask : [ '99-99999-9999' ],
		keepStatic : true
	});
  	
  	$("input[id*='rg']").inputmask({
		mask : [ '9.999.999' ],
		keepStatic : true
	});
  	
  	$("input[id*='cpf']").inputmask({
		mask : [ '999.999.999-99' ],
		keepStatic : true
	});
	
  	$("input[id*='nis']").inputmask({
		mask : [ '99999999999' ],
		keepStatic : true
	});
  	
  	$("input[id*='cep']").inputmask({
		mask : [ '99999-999' ],
		keepStatic : true
	});
  	
  </script>
  
  <script type="text/javascript">
    $(function () {
        var i = -1;
        var toastCount = 0;
        var $toastlast;

        var getMessage = function () {
            var msgs = ['My name is Inigo Montoya. You killed my father. Prepare to die!',
                '<div><input class="input-small" value="textbox"/>&nbsp;<a href="http://johnpapa.net" target="_blank">This is a hyperlink</a></div><div><button type="button" id="okBtn" class="btn btn-primary">Close me</button><button type="button" id="surpriseBtn" class="btn" style="margin: 0 8px 0 8px">Surprise me</button></div>',
                'Are you the six fingered man?',
                'Inconceivable!',
                'I do not think that means what you think it means.',
                'Have fun storming the castle!'
            ];
            i++;
            if (i === msgs.length) {
                i = 0;
            }

            return msgs[i];
        };

        var getMessageWithClearButton = function (msg) {
            msg = msg ? msg : 'Clear itself?';
            msg += '<br /><br /><button type="button" class="btn clear">Yes</button>';
            return msg;
        };

        $('#closeButton').click(function() {
            if($(this).is(':checked')) {
                $('#addBehaviorOnToastCloseClick').prop('disabled', false);
            } else {
                $('#addBehaviorOnToastCloseClick').prop('disabled', true);
                $('#addBehaviorOnToastCloseClick').prop('checked', false);
            }
        });

        $('#showtoast').click(function () {
            var shortCutFunction = $("#toastTypeGroup input:radio:checked").val();
            var msg = $('#message').val();
            var title = $('#title').val() || '';
            var $showDuration = $('#showDuration');
            var $hideDuration = $('#hideDuration');
            var $timeOut = $('#timeOut');
            var $extendedTimeOut = $('#extendedTimeOut');
            var $showEasing = $('#showEasing');
            var $hideEasing = $('#hideEasing');
            var $showMethod = $('#showMethod');
            var $hideMethod = $('#hideMethod');
            var toastIndex = toastCount++;
            var addClear = $('#addClear').prop('checked');

            toastr.options = {
                closeButton: $('#closeButton').prop('checked'),
                debug: $('#debugInfo').prop('checked'),
                newestOnTop: $('#newestOnTop').prop('checked'),
                progressBar: $('#progressBar').prop('checked'),
                rtl: $('#rtl').prop('checked'),
                positionClass: $('#positionGroup input:radio:checked').val() || 'toast-top-right',
                preventDuplicates: $('#preventDuplicates').prop('checked'),
                onclick: null
            };

            if ($('#addBehaviorOnToastClick').prop('checked')) {
                toastr.options.onclick = function () {
                    alert('You can perform some custom action after a toast goes away');
                };
            }

            if ($('#addBehaviorOnToastCloseClick').prop('checked')) {
                toastr.options.onCloseClick = function () {
                    alert('You can perform some custom action when the close button is clicked');
                };
            }

            if ($showDuration.val().length) {
                toastr.options.showDuration = parseInt($showDuration.val());
            }

            if ($hideDuration.val().length) {
                toastr.options.hideDuration = parseInt($hideDuration.val());
            }

            if ($timeOut.val().length) {
                toastr.options.timeOut = addClear ? 0 : parseInt($timeOut.val());
            }

            if ($extendedTimeOut.val().length) {
                toastr.options.extendedTimeOut = addClear ? 0 : parseInt($extendedTimeOut.val());
            }

            if ($showEasing.val().length) {
                toastr.options.showEasing = $showEasing.val();
            }

            if ($hideEasing.val().length) {
                toastr.options.hideEasing = $hideEasing.val();
            }

            if ($showMethod.val().length) {
                toastr.options.showMethod = $showMethod.val();
            }

            if ($hideMethod.val().length) {
                toastr.options.hideMethod = $hideMethod.val();
            }

            if (addClear) {
                msg = getMessageWithClearButton(msg);
                toastr.options.tapToDismiss = false;
            }
            if (!msg) {
                msg = getMessage();
            }

            $('#toastrOptions').text('Command: toastr["'
                    + shortCutFunction
                    + '"]("'
                    + msg
                    + (title ? '", "' + title : '')
                    + '")\n\ntoastr.options = '
                    + JSON.stringify(toastr.options, null, 2)
            );

            var $toast = toastr[shortCutFunction](msg, title); // Wire up an event handler to a button in the toast, if it exists
            $toastlast = $toast;

            if(typeof $toast === 'undefined'){
                return;
            }

            if ($toast.find('#okBtn').length) {
                $toast.delegate('#okBtn', 'click', function () {
                    alert('you clicked me. i was toast #' + toastIndex + '. goodbye!');
                    $toast.remove();
                });
            }
            if ($toast.find('#surpriseBtn').length) {
                $toast.delegate('#surpriseBtn', 'click', function () {
                    alert('Surprise! you clicked me. i was toast #' + toastIndex + '. You could perform an action here.');
                });
            }
            if ($toast.find('.clear').length) {
                $toast.delegate('.clear', 'click', function () {
                    toastr.clear($toast, { force: true });
                });
            }
        });

        function getLastToast(){
            return $toastlast;
        }
        $('#clearlasttoast').click(function () {
            toastr.clear(getLastToast());
        });
        $('#cleartoasts').click(function () {
            toastr.clear();
        });
    })
</script>

</body>
</html>