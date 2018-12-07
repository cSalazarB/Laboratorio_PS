/* function for calcule date */
function parseDate(str) {
	var mdy = str.split('-');
	return new Date(mdy[0], mdy[1]-1, mdy[2]);
}

function daydiff(first, second) {
	return Math.round((second-first)/(1000*60*60*24)).toString();
}

function daydiffInt(first, second) {
	return Math.round((second-first)/(1000*60*60*24));
}

$('#duracionPaquete').change(function() {
    var duracionPaquete = $('#duracionPaquete').val(); 
    var d = new Date(); // date today
    var today = d.getFullYear()+ "-" + (d.getMonth()+1)+ "-"+d.getDate();
    
    var dias = daydiffInt(parseDate(today), parseDate(duracionPaquete));
    
    if(dias < 0){
    	alert("No puede poner una fecha pasada!");
    	$('#duracionPaquete').val(""); 
    	return;
    }   
});


$('#duracionOfertaPaquete').change(function() {
    var duracionOfertaPaquete = $('#duracionOfertaPaquete').val(); 
    var d = new Date(); // date today
    var today = d.getFullYear()+ "-" + (d.getMonth()+1)+ "-"+d.getDate();
    
    var dias = daydiffInt(parseDate(today), parseDate(duracionOfertaPaquete));
    
    if(dias < 0){
    	alert("No puede poner una fecha pasada!");
    	$('#duracionOfertaPaquete').val(""); 
    	return;
    }   
});


function addPaquete(){	

	var url = "../admin/paquete/savePaquete";

	if($('#nombrePaquete').val().length == 0){
		alert("Debe poner un nombre al paquete");
		return;
	}

	var d = new Date(); // date today
	var today = d.getFullYear()+ "-" + (d.getMonth()+1)+ "-"+d.getDate();
	var duracion = $('#duracionPaquete').val();
	var duracionOf = $('#duracionOfertaPaquete').val();
	var oferta =  $('#ofertaPaquete').val();

	var destinos = $('#multiselectDestino').val();
	var image1 = $("#imagen1")[0].files[0];
	var image2 = $("#imagen2")[0].files[0];

	if(image1 == null && image2 ==null) {
		alert("Debe subir al menos una Foto para el Paquete!");
		return;
	}

	var datas = new FormData();
	var other_data = $('#form_regPaquete').serializeArray();

	$.each(other_data,function(key,input){
		datas.append(input.name,input.value);
	});

	if(destinos !=""){ datas.append("destinosPaquete",destinos);}
	else{ alert("Debe seleccionar al menos un destino!"); return;}

	if($('#precioPaquete').val().length == 0){
		alert("Debe ingresar un Precio al Paquete");	
		return;
	} else if(isNaN($('#precioPaquete').val())){
		alert("debe ingresar un numero al Precio");
		return;
	}
	
	if($('#precioOferta').val()!="" && isNaN($('#precioOferta').val())){
		alert("debe ingresar un numero al Precio Oferta");
		return;
	}
	
	if($('#stockPaquete').val()!= "" > 0 && isNaN($('#stockPaquete').val())){
		alert("debe ingresar un numero al Stock");
		return;
	}

	if(image1 != null ) datas.append("image1",image1); 
	if(image2 != null) datas.append("image2",image2);

	if(duracion !="") datas.append("duracion",daydiff(parseDate(today), parseDate(duracion)));
	if(duracionOf !="") datas.append("duracionOf",daydiff(parseDate(today), parseDate(duracionOf)));
	if(oferta !="") datas.append("ofertaPaquete",oferta);

	datas.append("dia",d.getDate());
	datas.append("mes",d.getMonth()+1);
	datas.append("anio",d.getFullYear());

	$.ajax({
		url: url,		
		type: 'POST',
		data: datas,  
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data: datas,      
		success: function(result){
			if(result){  

				alert('sucess add Admin!' + result);
				window.location.replace("paquetes");
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


function changeStatePaquete(id,state){  
	var url = "paquete/changeStatePaquete";
	alert("vals: "+id + " "+state);
	$.ajax({
		url: url,
		type: 'POST',
		data: {"key": id, "state":state},      
		success: function(result){
			if(result){  
				alert('sucess change State paquete!' + result);
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

function changeCheckBox2(id, check){

	var state = "0";
	if(check.checked){
		state="1";
	}
	changeStatePaquete(id, state);		
}
function regresar(){
	window.location.replace("paquetes");
}
