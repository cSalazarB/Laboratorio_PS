


$(document).ready(function() {
	 
	if( localStorage['fecha_salidaI'] != null)$('#fecha_salida').val(localStorage['fecha_salidaI']);
	if( localStorage['fecha_regresoI'] != null)$('#fecha_regreso').val(localStorage['fecha_regresoI']);
	if( localStorage['destinoI'] != null)$('#destino').val(localStorage['destinoI']);
	if( localStorage['num_personasI'] != null)$('#num_personas').val(localStorage['num_personasI']);	
	
	searchPaquets(1);
	    
} );


/* function for calcule date */
function parseDate(str) {
    var mdy = str.split('-');
    return new Date(mdy[0], mdy[1]-1, mdy[2]);
}

function daydiffInt(first, second) {
    return Math.round((second-first)/(1000*60*60*24));
}

/* verify date the fecha de regreso */
$('#fecha_regreso').change(function() {
    var fecha_regreso = $('#fecha_regreso').val(); 
    var d = new Date(); // date today
    var today = d.getFullYear()+ "-" + (d.getMonth()+1)+ "-"+d.getDate();
    
    var dias = daydiffInt(parseDate(today), parseDate(fecha_regreso));
    
    if(dias < 0){
    	alert("No puede poner una fecha pasada!");
    	$('#fecha_regreso').val(""); 
    	return;
    }
    
    if($('#fecha_salida').val().length > 2){
    	 var fecha_regreso = $('#fecha_regreso').val(); 
    	 var fecha_salida = $('#fecha_salida').val(); 
    	 var dias = daydiffInt(parseDate(fecha_salida), parseDate(fecha_regreso));
    	 if(dias < 0){
    		 alert("Fecha de Regreso y Salida no valida");
    		 $('#fecha_regreso').val(""); 
    	    	return;
    	 }
	}
});

/* verify date the fecha de salida */
$('#fecha_salida').change(function() {
    var fecha_salida = $('#fecha_salida').val(); 
    var d = new Date(); // date today
    var today = d.getFullYear()+ "-" + (d.getMonth()+1)+ "-"+d.getDate();
    
    var dias = daydiffInt(parseDate(today), parseDate(fecha_salida));
    
    if(dias < 0){
    	alert("No puede poner una fecha pasada!");
    	$('#fecha_salida').val("");
    	return;
    }
    
    if($('#fecha_regreso').val().length > 2){
   	 var fecha_regreso = $('#fecha_regreso').val(); 
   	 var fecha_salida = $('#fecha_salida').val(); 
   	 var dias = daydiffInt(parseDate(fecha_salida), parseDate(fecha_regreso));
   	 if(dias < 0){
   		 alert("Fecha de Regreso y Salida no valida");
   		 $('#fecha_salida').val(""); 
   	    	return;
   	 }
	}
});


/* Pagination */ 

function pagination(pag){
	searchPaquets(pag);
}



$("#checkfilter").change(function(){	
	if(this.checked){
		$("#checkfilter").val('1');
	} else{
		$("#checkfilter").val('0');
	}
});

/* filter paquete */
function searchPaquets(pag){
	
	var url = 'searchFilterPaquet';
	var datas = new FormData();
	var other_data = $('#form_filter').serializeArray();	
	
	var fecha_salida = $("#fecha_salida").val();
	var fecha_regreso = $("#fecha_regreso").val();
	var duracion = "";
	
	if(fecha_salida.length > 2 && fecha_regreso.length > 2 ){
		duracion = daydiffInt(parseDate(fecha_salida), parseDate(fecha_regreso)).toString();
	}
	
	$.each(other_data,function(key,input){
		datas.append(input.name,input.value);
	});
	
	var oferta = $("#checkfilter").val();
	
	datas.append("oferta",oferta);
	datas.append("pagina",pag);
	datas.append("duracion",duracion);
	
	$.ajax({
		url: url,
		type: 'POST',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data:datas,      
		success: function(result){
			if(result){      
				if(("true".localeCompare(result[0])) == 0){
					$('#pagination').html(result[2]);
					$('#listPaquete').html(result[1]); 
					alert("success");
				}else{
					$('#pagination').html("");
					$('#listPaquete').html("No se Encontraron resultados");
					alert("No se encontraron registros");
				}				
				
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

function clearFilters(){
	$("#fecha_salida").val("");
	$("#fecha_regreso").val("");
	$("#numPersonas").val("0");
	$("#destino").val("");
	$("#numPersonas").val("0");
	$("#tipo_actividad").val("Aventura");
	$("#checkfilter").val("0");
	$('#checkfilter').attr('checked', false);
}
