<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Administrador-Agencias</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="<c:url value="/resources/css/bootstrap.css"/> " rel="stylesheet" 	media="all">
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style2.css"/> " rel="stylesheet" 	media="all">
<!--js-->
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<!--icons-css-->
<link href="<c:url value="/resources/css/font-awesome.css"/> " rel="stylesheet" 	media="all"> 
<!--Google Fonts-->
<link href="https://fonts.googleapis.com/css?family=Carrois+Gothic|Work+Sans:400,500,600" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Ruda" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css"/> " rel="stylesheet" 	media="all"> 
<link href="<c:url value="/resources/css/multiple-select.css"/> " rel="stylesheet" 	media="all"> 


<!--scrolling js-->
		<script src="<c:url value="/resources/js/jquery.nicescroll.js" />"></script>
		<script src="<c:url value="/resources/js/scripts.js.js" />"></script>
		<!--//scrolling js-->
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/js/multiple-select.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap-datetimepicker.min.css"/>" rel="stylesheet">

<script>
    $(function() {
        $('#ms').change(function() {
            console.log($(this).val());
        }).multipleSelect({
            width: '100%'
        });
    });
</script>



<style type="text/css" media=screen>
	.btn span.fa {    			
		opacity: 0;				
	}
	.btn.active span.fa {				
		opacity: 1;				
	}
	.help-block{
		font-size:12px;
	}
	.col-md-3.control-label {
		font-size:13px;
	}
	
</style>	

</head>
<body>	
<div class="page-container">	
   
        
        
<!--ACA LLENAN USTEDES-->
<div class="inner-block">
    <div class="blank">
    	<div class="work-progres">
    	
    		<form id="form_regAgencia" >
    			<div class="panel panel-default" style=" font-family: 'Ruda', sans-serif;">
    				<div class="panel-heading" style="border-bottom:solid #CCC 1px; padding-top:25px; padding-left:25px">
                    	<h3 class="panel-title"><strong style="font-size:30px">Registro </strong></h3>   
                    </div>
                    <div class="panel-body">
                    	<div class="col-md-6">
                    		<fieldset>
                                        <legend> Datos de la Agencia</legend>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Nombre de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="nombreAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Nombre de la agencia</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">RUC Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="rucAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese RUC de la agencia</span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Raz. Social de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="razonsocialAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese Raz. Social de la agencia</span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Email de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="email" class="form-control" name="emailAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el email de la agencia</span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Ubigeo de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="ubigeoAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Ubigeo de la agencia</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Dirección de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="direccionAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Direcci&oacute;n de la agencia</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Telefono de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="telefonoAgencia" onkeypress="return numeros(event)"/>
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el telefono de la agencia</span>
                                                </div>
                                            </div>





       
                                       
                        	</fieldset>
                        	
                    	</div>
                    	
                    	<div class="col-md-6">
                    		<fieldset>
	                    		<legend> Descripci&oacute;n General </legend>

	                    		<div class="form-group">
	                            	<label class="col-md-3 control-label">Descripci&oacute;n de la Agencia</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<textarea class="form-control" rows="6" name="descripcionAgencia" required></textarea>
	                                    <span class="help-block">Ingrese la descripci&oacute;n detallada de la agencia</span>
	                              	</div>
	                          	</div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Contraseña de Agencia</label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                        <input type="password" class="form-control" name="passAgencia" required/>
                                         </div>                                            
                                            <span class="help-block">Ingrese password de la agencia</span>
                                    </div>
                                </div>
                    		</fieldset>
                          	
                    	</div>
                    	
                    </div>
    				<div class="panel-footer">
    				<button class="btn btn-default">Limpiar</button>
    				<button class="btn btn-default"onClick="regresar()">Regresar</button>
    				<button type="button" class="btn btn-primary pull-right"  onClick="addAgencia()" >Registrar</button>
                   	 	</div>
    			</div>
    		</form>
    		
    		
    	</div>
    </div>
</div>
<!--inner block end here-->




<!--copy rights start here-->
<div class="copyrights">
	 <p>2017 AQPTravel Todos los derechos Reservados | Dise&ntilde;ado por  <a href="http://tecsofts.com/" target="_blank">TecSoft</a> </p>
</div>	
<!--COPY rights end here-->
</div>


<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
<!-- mother grid end here-->

	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/agencia.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>"></script>

  <script type="text/javascript">
    $("#fecha_ida").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
    $("#fecha_regreso").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
  </script>
  
  <script type="text/javascript">
	
	$(function() {
	    $('input[type=text]').on('keypress', function(e) {
	        if (e.which == 32){
	        	if($(this).val().length==0)return false;
	        }	            
	    });
	});
	</script>
	
	
</body>
</html>                     
