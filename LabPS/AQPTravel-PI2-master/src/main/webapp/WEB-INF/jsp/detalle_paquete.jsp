<!DOCTYPE html>
<html lang="es">

<head>



    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 

    <title>Epis Tours</title>

  
	<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">


  <link href="<c:url value="/resources/css/agency.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/languages.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/miEstilo.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/css/style.css"/>" rel="stylesheet">
 
 
    
</head>
<body class="container">
	<div class="test"></div>
	<div class="row justify-content-center"></div>
		
		<button id= "btn_ver" type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">
		  Ver Paquete <span class="Icon-arrow-with-circle-right"></span>
		</button>
		

	</div>
	
	<!-- Modal -->
	<div class="modal fade bd-example-modal-lg" id="paquete_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	   <div class="modal-dialog modal-lg">
 
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="paquete_titulo">Colca Full Day</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">

	      	<div class="container-fluid">
				<div class="row desc_paq">
			      <div class="col-lg-7">
			      	<p class="text-justify">
			      	En este tour se puede apreciar exclusivas vistas de los volcanes Misti, Chachani y Pichu Pichu y paisajes andinos de la reserva nacional de Aguada Blanca.</p>
			      	<ul id = "lista" class="text-justify">
			      		<li class="caracteristica">Experimenta la emoción que se siente al bajar en bicicleta por las faldas de los volcanes.
</li>
			      		<li class="caracteristica">Siempre con la seguridad de un guía que los acompaña en bicicleta y el apoyo del transporte.</li>
			      		<li class="caracteristica">Anímate a descubrir una nueva forma de disfrutar de Arequipa.</li>
			      	</ul>

    
    
			      </div>
			      <div class="col-lg-5 img_1">
					<img src="img/paquete1.jpg" class="img-thumbnail" alt="Responsive image">
			      </div>
			    </div>
			    <div class="row detalles_paq">
			      <div class="col-lg-5">
			      	<div class="embed-responsive embed-responsive-4by3">
					    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/uW164dEnYvc"></iframe>

					</div>

    
    
			      </div>
			      <div class="col-lg-7 ">
			      	<div class ="title2">Incluye</div>
					<ul  class="text-justify lista2">
			      		<li class="">Chofer y Guía profesionales.</li>
			      		<li class="">Transporte privado 4×4.</li>
			      		<li class="">Equipo completo: Bicicleta, casco, protectores brazos y piernas.</li>
			      		<li class="">Refrigerio: Agua, chocolate, frutas, galletas y rehidratantes.</li>
			      	</ul>
			      	<div class ="title2">No Incluye</div>
					<ul  class="text-justify lista2">
			      		<li class="">Alimentación no mencionada.</li>
			      		<li class="">Botiquín de primeros auxilios.</li>
			      	</ul>

			      </div>
			    </div>
			    <div class="row justify-content-center img_1">
					<div class="col col-auto">
						<button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><span class="Icon-text-document"></span> Ver Detalles.pdf</button>
					</div>
			    </div>
	      	</div>
	        
	      </div>
	      <div class="modal-footer">
	      	<button type="button" class="btn btn-success ver_modal_paq"><span class="Icon-shopping-cart"></span> Comprar</button>
	        <button type="button" class="btn btn-warning ver_modal_paq" data-dismiss="modal"><span class="Icon-ticket"></span> Reservar</button>
	   
	      </div>
	    </div>
	  </div>
	</div>
	
	
	
  <script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>  
  <script src="<c:url value="/resources/js/popper.min.js"/>"></script>  
  <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>



 
</body>
</html>