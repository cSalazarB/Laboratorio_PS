function addDestino(){	
	
if($('#nombreDestino').val().length ==  0){
	alert("Debe ingresar un Nombre al Destino!");
	return;
}
	
var url = "destinos/saveDestino";	
	$.ajax({
		url: url,
		type: 'POST',
		data: $('#form_regDestino').serialize(),      
		success: function(result){
			if(result){  

				alert('Se ha agregado nuevo destino');    
				window.location.replace("destinos");
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


function editDestino(){	
	
	if(($('#nombreDestinoE').val().length ==  0 ) || $('#nombreDestinoE').val()==" " ){
		alert("Debe ingresar un Nombre al Destino!");
		return;
	}
	
	
	var url = "destinos/updateDestino";
	$.ajax({
		url: url,
		type: 'POST',
		data: $('#form_regDestinoE').serialize(),      
		success: function(result){
			if(result){  

				alert('Se ha modificado destino');    
				window.location.replace("destinos");
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
	
	


function updatedestino(idDestiny, nomDestiny){
	$("#nombreDestinoE").val(nomDestiny);
	$("#idDestinoE").val(idDestiny);	
}


function changeStateDestino(id,state){ 	
	
	var url = "destinos/changeStateDestino";
   
	$.ajax({
		url: url,
		type: 'POST',
		data: {"key": id, "state":state},      
		success: function(result){
			if(result){  
				alert('Se ha cambiado estado');
				window.location.replace("destinos");
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

function changeCheckBoxDestino(id, check){

	var state = "0";
	if(check.checked){
		   state="1";
    }
	changeStateDestino(id, state);		
}