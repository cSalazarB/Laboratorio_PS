;(function(){
	

	const email = "darwinqsot@gmail.com"
    $('#my-formContacto').on('submit',function(ev){
    	ev.preventDefault()
    	sendForm($(this))
    	return false
    })
	function sendForm($form){
		$.ajax({
    		url: $form.attr("action"), 
    		type: 'POST',
    		data: $form.formObject(),
    		dataType: 'json',
    		success: function(){
    			alert('Su mensaje a sido enviado con exito');
    		}
    	})
	}

})();
