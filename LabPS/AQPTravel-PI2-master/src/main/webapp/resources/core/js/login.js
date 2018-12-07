
function login(){	
	var url = "plogin";
	
	$.ajax({
		url: url,
		type: 'POST',
		data: $('#form_login').serialize(),
		success: function(result){
		},
		error: function(){
			alert('Ocurrio un error en el Proceso');
		}
	});
}




