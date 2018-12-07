function pagefilterPage(){	
	/* pasando campos a otra pagina */
	localStorage.setItem( 'fecha_salidaI', $("#fecha_salidaI").val() );
	localStorage.setItem( 'fecha_regresoI', $("#fecha_regresoI").val() );
	localStorage.setItem( 'destinoI', $("#destinoI").val() );
	localStorage.setItem( 'num_personasI',  $("#num_personasI").val() );
	window.location.replace("pageFiltroPaquete");
}

/* function for calcule date */
function parseDate(str) {
    var mdy = str.split('-');
    return new Date(mdy[0], mdy[1]-1, mdy[2]);
}

function daydiffInt(first, second) {
    return Math.round((second-first)/(1000*60*60*24));
}

/* verify date the fecha de regreso */
$('#fecha_regresoI').change(function() {
    var fecha_regreso = $('#fecha_regresoI').val(); 
    var d = new Date(); // date today
    var today = d.getFullYear()+ "-" + (d.getMonth()+1)+ "-"+d.getDate();
    
    var dias = daydiffInt(parseDate(today), parseDate(fecha_regreso));
    
    if(dias < 0){
    	alert("No puede poner una fecha pasada!");
    	$('#fecha_regresoI').val(""); 
    	return;
    }
    
    if($('#fecha_salidaI').val().length > 2){
    	 var fecha_regreso = $('#fecha_regresoI').val(); 
    	 var fecha_salida = $('#fecha_salidaI').val(); 
    	 var dias = daydiffInt(parseDate(fecha_salida), parseDate(fecha_regreso));
    	 if(dias < 0){
    		 alert("Fecha de Regreso y Salida no valida");
    		 $('#fecha_regresoI').val(""); 
    	    	return;
    	 }
	}
});

/* verify date the fecha de salida */
$('#fecha_salidaI').change(function() {
    var fecha_salida = $('#fecha_salidaI').val(); 
    var d = new Date(); // date today
    var today = d.getFullYear()+ "-" + (d.getMonth()+1)+ "-"+d.getDate();
    
    var dias = daydiffInt(parseDate(today), parseDate(fecha_salida));
    
    if(dias < 0){
    	alert("No puede poner una fecha pasada!");
    	$('#fecha_salidaI').val("");
    	return;
    }
    
    if($('#fecha_regresoI').val().length > 2){
   	 var fecha_regreso = $('#fecha_regresoI').val(); 
   	 var fecha_salida = $('#fecha_salidaI').val(); 
   	 var dias = daydiffInt(parseDate(fecha_salida), parseDate(fecha_regreso));
   	 if(dias < 0){
   		 alert("Fecha de Regreso y Salida no valida");
   		 $('#fecha_salidaI').val(""); 
   	    	return;
   	 }
	}
});
