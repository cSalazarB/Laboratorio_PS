<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">


<div class="modal-content">


	<br />
<spring:url value="/admin/agencia/updateAgencia" var="userActionUrl" />



	
	<form:form class="form-horizontal" method="post" modelAttribute="agenciaForm" id="form_modAgencia"  action="${userActionUrl}">
	
	

	
	<form:hidden path="idAgency" name="idAgency"/>

	



    	
    		
    			<div class="panel panel-default" style=" font-family: 'Ruda', sans-serif;">
    				<div class="panel-heading" style="border-bottom:solid #CCC 1px; padding-top:25px; padding-left:25px">
                    	<h3 class="panel-title"><strong style="font-size:30px">Agregar Nueva Agencia </strong> Formulario</h3>   
                    </div>
                    <div class="panel-body">
                    	<div class="col-md-6">
                    		<fieldset>
                                        <legend> Datos de la Agencia</legend>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Nombre</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <!--<input type="text" class="form-control" name="nombreAgencia" /> -->
                                                        <form:input path="name" type="text" class="form-control " name="nombreAgencia" />
                                                    </div>                                            
                                                    
                                                </div>
                                            </div><br>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">RUC</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        
                                                        <form:input path="ruc" type="text" class="form-control " name="rucAgencia" />
                                                    </div>                                            
                                                    
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Raz.Social</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        
                                                        <form:input path="socialReason" type="text" class="form-control " name="razonsocialAgencia" />
                                                    </div>                                            
                                                </div>
                                            </div><br>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Email</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        
                                                        <form:input path="email" type="text" class="form-control " name="emailAgencia" />
                                                    </div>                                            
                                                    
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Ubigeo</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        
                                                        <form:input path="ubigeo" type="text" class="form-control " name="ubigeoAgencia" />
                                                    </div>                                            
                                                    
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Direccion</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                       
                                                        <form:input path="address" type="text" class="form-control " name="direccionAgencia" />
                                                    </div>                                            
                                                    
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Telefono</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                            
                                                        <form:input path="phone" type="text" class="form-control " name="telefonoAgencia" />
                                                    </div>                                            
                                           
                                                </div>
                                            </div>





       
                                       
                        	</fieldset>
                        	
                    	</div>
                    	
                    	<div class="col-md-6">
                    		<fieldset>
	                    		<legend> Descripci&oacute;n General </legend>

	                    		<div class="form-group">
                                                <label class="col-md-3 control-label">Valoracion</label>
                                                <div class="col-md-9">                                                                                             
												<form:radiobuttons path="rate" items="${numberList}" element="label class='radio-inline'" />
                                                   
                                                </div>
                                            </div>




	                    		<div class="form-group">
	                            	<label class="col-md-3 control-label">Detalle</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<form:textarea path="description"  rows="6"  class="form-control " name="descripcionAgencia" />
	                              	</div>
	                          	</div>



								<div class="form-group">
                                    <label class="col-md-3 control-label">Fecha</label>
                                    <div class="col-md-9">                                            
                                               <div class="form-group">
											        <div class="col-sm-4">
											          <form:input path="dayMod" type="text" class="form-control " name="diaAgencia" />
											        </div>
											        <div class="col-sm-4">
											          <form:input path="monthMod" type="text" class="form-control " name="mesAgencia"  />
											        </div>
											        <div class="col-sm-4">
											            <form:input path="yearMod" type="text" class="form-control " name="anioAgencia" />
											          </div>
											        </div>                                           
                                    </div>
                                </div>
                                
                                
                                
                                
                                

                                <div class="form-group">
                                                <label class="col-md-3 control-label">Admin</label>
                                                <div class="col-md-9">                                                                                            
                                     
                                                    
                                                    <form:select path="codAdmin" class="form-control" name="adminAgencia">
														<form:option value="000" label="--- Select ---" />
														<form:options items="${valoracionList}" />
													</form:select>
                                                    <span class="help-block">Seleccione</span>
                                                </div>
                                            </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                        
                                        <form:input path="password" type="text" class="form-control " name="passAgencia" />
                                         </div>                                            
                                    </div>
                                </div>

                                

								<div class="form-group">
                                    <label class="col-md-3 control-label">Estado</label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
	                                   
											<form:radiobuttons path="state" items="${estadoList}" element="label class='radio-inline'" name="estadoAgencia" />
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