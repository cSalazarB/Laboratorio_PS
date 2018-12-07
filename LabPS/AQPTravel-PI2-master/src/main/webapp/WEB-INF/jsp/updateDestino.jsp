<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">


<div class="modal-content2">


	<br />
<spring:url value="/admin/destinos/updateDestino" var="userActionUrl" />



	
	<form:form class="form-horizontal" method="post" modelAttribute="destinoForm2" id="form_modDestino"  action="${userActionUrl}">
	
	

	
	<form:hidden path="idDestiny" name="idDestiny"/>

	



    	
    		
    			<div class="panel panel-default" style=" font-family: 'Ruda', sans-serif;">
    				<div class="panel-heading" style="border-bottom:solid #CCC 1px; padding-top:25px; padding-left:25px">
                    	<h3 class="panel-title"><strong style="font-size:30px">Modificar Destino </strong> Formulario</h3>   
                    </div>
                    <div class="panel-body">
                    	<div class="col-md-6">
                    		<fieldset>
                                        <legend> Datos del Destino</legend>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Nombre del Destino</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <!--<input type="text" class="form-control" name="nombreDestino" /> -->
                                                        <form:input path="name" type="text" class="form-control " name="nombreDestino" />
                                                    </div>                                            
                                                    
                                                </div>
                                            </div><br>

                                          
								<div class="form-group">
                                    <label class="col-md-3 control-label">Estado de Destino</label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
	                                   
											<label class="radio-inline"><input type="radio" name="estadoDestino" value="0">0</label>
											<label class="radio-inline"><input type="radio" name="estadoDestino" value="1">1</label>
                                         </div>                                            
                                    </div>
                                </div>

	                          	






                    		</fieldset>
                          	
                    	</div>
                    	
                    </div>
    				<div class="panel-footer">
    				<button class="btn btn-default">Limpiar</button>
    				
    				<button type="submit" class="btn btn-primary pull-right"  >Modificar</button>
    				
                   	 	</div>
    			</div>
    	



	
	</form:form>

</div>



</body>
</html>