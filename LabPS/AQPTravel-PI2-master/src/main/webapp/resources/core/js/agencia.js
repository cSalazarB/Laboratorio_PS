function addAgencia(){	
	
var url = "agencia/saveAgencia";

	$.ajax({
		url: url,
		type: 'POST',
		data: $('#form_regAgencia').serialize(),      
		success: function(result){
			if(result){  

				alert(result);    
				window.location.replace("../index");
			}
			else{
				alert('ocurrio algun ERROR, vuelva a intentarlo ');
			}   

		},
		error: function(){
			alert('Ocurrio un erro en el Proceso');
		}
	});
	
}







function changeStateAgencia(id,state){  
	var url = "agencia/changeStateAgencia";
   
	$.ajax({
		url: url,
		type: 'POST',
		data: {"key": id, "state":state},      
		success: function(result){
			if(result){  
				alert('Se ha cambiado estado');
			}
			else{
				alert('ocurrio algun ERROR, vuelva a intentarlo ');

			}   
		},
		error: function(){
			alert('Ocurrio un error en el Proceso');
		}
	});
}

function changeCheckBoxAgencia(id, check){

	var state = "0";
	if(check.checked){
		   state="1";
    }
	changeStateAgencia(id, state);		
}
function numeros(e){
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " 0123456789";
    especiales = [8,37,39,46];
 
    tecla_especial = false
    for(var i in especiales){
 if(key == especiales[i]){
     tecla_especial = true;
     break;
        } 
    }
 
    if(letras.indexOf(tecla)==-1 && !tecla_especial)
        return false;
}
function regresar(){
	window.location.replace("../index");
}
function recargar(){
	window.location.replace("../admin/agencias");
}