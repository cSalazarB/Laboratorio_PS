<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html >
<head>
 
  <title>PaginaUsuario</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta content="" name="keywords">
  <meta content="" name="description">



  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">
  <link href="<c:url value="/resources/css/star-rating.css"/>" rel="stylesheet">
  <!-- Bootstrap CSS File -->
  <link href="<c:url value="/resources/lib/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<c:url value="/resources/lib/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/lib/animate/animate.min.css"/>" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<c:url value="/resources/css/pagina_usuario.css"/>" rel="stylesheet">
  


  <link href="<c:url value="/resources/css/bootstrap-datetimepicker.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/star.css"/>" rel="stylesheet">
  
</head>
<body>
	<header id="header" style="background: #37454d;">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="#hero"><img src="<c:url value="/resources/img/LOGO1.png"/>" alt="" title="" /></img></a>
        <!-- Uncomment below if you prefer to use a text logo -->
        <!--<h1><a href="#hero">Regna</a></h1>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li ><a href="index">Inicio</a></li>
  
          <li class="menu-active"><a href="#mi-perfil">Perfil</a></li>
         
          <li><a href="#contact">Contacto</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Hero Section
  ============================-->
 

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="mi-perfil">

      <div class="container">
        <div class="row">

          <div  id= "mi-perfil-section1" class="col-lg-3 col-md-4 justify-content-center">
            <div id="div-imagen-perfil">
              <center>
                <img src="<c:url value="/resources/img/mi-imagen.jpg"/>" class="img-fluid" alt="Responsive image" title="" />
              </center>
            </div>

            <h2 id="nombre-usuario" class="text-center">${iduser}</h2>

            



            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Información Personal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="form-group row">
                        <label for="usuario" class="col-sm-2 col-form-label">Usuario:</label>
                        <div class="col-sm-10">
                          <input  type="text" class="form-control" id="usuario" value="Alberth-SP">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="nombre" class="col-sm-2 col-form-label">Nombre:</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="nombre" value="Alberth">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="apellidos" class="col-sm-2 col-form-label">Apellidos:</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="apellidos" value="Calla B.">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="email" class="col-sm-2 col-form-label">Email:</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="email" value="alberth@gmail.com">
                        </div>
                      </div>

                      
                      
                     
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Modificar</button>
                  </div>

                  </form>
                </div>
              </div>
            </div>


            <!-- Modal 2-->
            <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Creando Agencia</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="form-group row">
                        <label for="nombre-agencia" class="col-sm-2 col-form-label">Nombre:</label>
                        <div class="col-sm-10">
                          <input  type="text" class="form-control" id="nombre-agencia" >
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="direccion" class="col-sm-2 col-form-label">Direccion:</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="direccion" >
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="email-agencia" class="col-sm-2 col-form-label">Email:</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="email-agencia" >
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="telefono-agencia" class="col-sm-2 col-form-label">Telefono:</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="telefono-agencia" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="desc-agencia">Descripcion</label>
                        <textarea class="form-control" id="desc-agencia" rows="3"></textarea>
                      </div>

                      
                      
                     
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Enviar Solicitud</button>
                  </div>

                  </form>
                </div>
              </div>
            </div>




          </div>


          <div id= "mi-perfil-section2" class="col-lg-9 col-md-8">
            <nav class="nav nav-tabs" id="myTab" role="tablist">
              <a class="nav-item nav-link active" id="nav-ofertas-tab" data-toggle="tab" href="#nav-ofertas" role="tab" aria-controls="nav-ofertas" aria-selected="true">Ofertas <span class="badge badge-light">2</span></a>
              <a class="nav-item nav-link" id="nav-paquetes-tab" data-toggle="tab" href="#nav-paquetes" role="tab" aria-controls="nav-paquetes" aria-selected="false">Mis Paquetes <span class="badge badge-light">3</span></a>
              <a class="nav-item nav-link" id="nav-mensajes-tab" data-toggle="tab" href="#nav-mensajes" role="tab" aria-controls="nav-mensajes" aria-selected="false">Mensajes/Recomendaciones <span class="badge badge-light">3</span></a>
            </nav>
            <div class="tab-content" id="nav-tabContent">
              <div class="tab-pane fade " id="nav-paquetes" role="tabpanel" aria-labelledby="nav-paquetes-tab">
                <div class="row">

                  <div class="col-lg-6 col-md-6 " id="mis-paquetes">

                    <div class="card text-center mis-paq">
                      <div class="card-header">
                         PARACAS - $200
                      </div>
                      <div class="card-body">
                       
                        <img src="<c:url value="/resources/img/portfolio/aventura2.jpg"/>"  class="img-fluid rounded" alt="Responsive image">
                         <form>
                            <div class="mi-puntuacion">
                              <input id="input-21e" value="0" type="text" class="rating" data-min=0 data-max=5 data-step=0.5 data-size="xs" title="">
                            </div>   
                            
                            <div class="form-group" style="margin-top:10px">
                                <button type="submit" class="btn btn-primary">Calificar</button>
                                <button type="reset" class="btn btn-default">Cancelar</button>
                              
                            </div>
                        </form>
                        
                      </div>
                      <div class="card-footer text-muted">
                        Hace 3 días
                      </div>
                    </div>

                    <div class="card text-center mis-paq">
                      <div class="card-header">
                        Piura - $300
                      </div>
                      <div class="card-body">
                        <img src="<c:url value="/resources/img/portfolio/naturaleza1.jpg"/>"  class="img-fluid rounded" alt="Responsive image">
                         <form>
                            <div class="mi-puntuacion">
                              <input id="input-21e" value="0" type="text" class="rating" data-min=0 data-max=5 data-step=0.5 data-size="xs" title="">
                            </div>   
                            
                            <div class="form-group" style="margin-top:10px">
                                <button type="submit" class="btn btn-primary">Calificar</button>
                                <button type="reset" class="btn btn-default">Cancelar</button>
                              
                            </div>
                        </form>
                        
                      </div>
                      <div class="card-footer text-muted">
                        Hace 1 mes
                      </div>
                    </div>

                  </div>
                  <div class="col-lg-6 col-md-6" id="mis-paquetes2">

                    <div class="card text-center mis-paq">
                      <div class="card-header">
                         Lambayeque - $250
                      </div>
                      <div class="card-body">
                        <img src="<c:url value="/resources/img/portfolio/aventura2.jpg"/>"  class="img-fluid rounded" alt="Responsive image">
                         <form>
                            <div class="mi-puntuacion">
                              <input id="input-21e" value="0" type="text" class="rating" data-min=0 data-max=5 data-step=0.5 data-size="xs" title="">
                            </div>   
                            
                            <div class="form-group" style="margin-top:10px">
                                <button type="submit" class="btn btn-primary">Calificar</button>
                                <button type="reset" class="btn btn-default">Cancelar</button>
                              
                            </div>
                        </form>
                        
                      </div>
                      <div class="card-footer text-muted">
                          

                          Hace 1 mes.

                      </div>
                    </div>
                  </div>
                </div>
                


              </div>
              <div class="tab-pane fade show active" id="nav-ofertas" role="tabpanel" aria-labelledby="nav-ofertas-tab">
                
                 
                 <div class="row justify-content-center ">
                   
                   <div class="col-lg-10">
                     
                     <div class="card text-center misOfert">
                      <div class="card-header">
                        <h3 class="font-weight-bold">Lambayeque  <span id="titulo-oferta">3días/2noches</span></h3>
                      </div>
                      <div class="card-body">
                        
                        <div class="row" >
                           <div class="col-lg-8 contenido" >
                             <ul>
                               <li class="font-italic">Incluye paseo por el centro arqueológico y zonas aledañas.</li>
                               <li class="font-italic">Visita a los museos y centros históticos de la ciudad.</li>
                               <li class="font-italic">Incluye guía turítica en el recorrido</li>
                             </ul>
                             <p><span id = "text-oferta">$189.00</span> <span id="text-antes"> Antes $250.00</span></p>
                             <div class="oferta-botones">
                               <button type="button" class="btn btn-success btn-lg">Reservar</button>
                               <button type="button" id ="btn-ver-info-oferta" class="btn btn-outline-secondary btn-lg">Ver Info</button>

                             </div>

                           </div>
                           <div class="col-lg-4">
                   
                              <img src="<c:url value="/resources/img/portfolio/cultura1.jpg"/>"  class="img-fluid rounded" alt="Responsive image">
                           </div>
                        </div>


                      </div>
                      <div class="card-footer text-muted">
                        Hace 2 horas
                      </div>
                     </div>
                     <div class="card text-center misOfert">
                      <div class="card-header">
                        <h3 class="font-weight-bold">Manu  <span id="titulo-oferta">5días/4noches</span></h3>
                      </div>
                      <div class="card-body">
                        
                        <div class="row" >
                           <div class="col-lg-8 contenido" >
                             <ul>
                               <li class="font-italic">Incluye paseo por el centro arqueológico y zonas aledañas.</li>
                               <li class="font-italic">Visita a los museos y centros históticos de la ciudad.</li>
                               <li class="font-italic">Incluye guía turítica en el recorrido</li>
                             </ul>
                             <p><span id = "text-oferta">$249.00</span> <span id="text-antes"> Antes $320.00</span></p>
                             <div class="oferta-botones">
                               <button type="button" class="btn btn-success btn-lg">Reservar</button>
                               <button type="button" id ="btn-ver-info-oferta" class="btn btn-outline-secondary btn-lg">Ver Info</button>

                             </div>

                           </div>
                           <div class="col-lg-4">
                               <img src="<c:url value="/resources/img/portfolio/cultura3.jpg"/>"  class="img-fluid rounded" alt="Responsive image">
                           </div>
                        </div>


                      </div>
                      <div class="card-footer text-muted">
                        Hace 1 semana
                      </div>
                     </div>

                   </div>
                 </div>


              </div>
              <div class="tab-pane fade" id="nav-mensajes" role="tabpanel" aria-labelledby="nav-mensajes-tab">
                  
                  <div class="row justify-content-center mis-paq">
                    
                    <div class="col-lg-10 col-md-12">
                        <div id="accordion" role="tablist">
                            <div class="card">
                              <div class="card-header" role="tab" id="headingOne">
                                <h5 class="mb-0">
                                  <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <h4 class="asunto-mensaje font-italic">RECUERDA PAGAR TU PAQUETE ANTES (25/12/2017)</h4> <p class=" font-italic fecha-mensaje">Diciembre 10<p>
                                  </a>
                                </h5>
                              </div>

                              <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body">
                                  <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident vel earum delectus a illum tempora ab numquam perspiciatis maxime fugiat voluptas atque ea modi, soluta temporibus nihil voluptatum repudiandae sed, neque corporis. Earum, cumque repellat cupiditate aliquam consectetur aut consequatur, ipsam quis quae rem eveniet nemo neque. Accusamus, numquam, temporibus.</p>
                                  <p class="text-right" id="nombre-empresa">
                                    AQP-TRAVEL
                                  </p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" role="tab" id="headingTwo">
                                <h5 class="mb-0">
                                  <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <h4 class="asunto-mensaje font-italic">TU PAQUETE A SIDO RESERVADO</h4> <p class="font-italic  fecha-mensaje">Diciembre 01<p>
                                  </a>
                                </h5>
                              </div>
                              <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                <div class="card-body">
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt hic quos laboriosam quam, eaque rerum dolorem natus officia atque possimus unde fuga molestiae sint! Blanditiis autem repudiandae nemo nisi impedit dignissimos, in similique sequi, deleniti error rerum ab sunt neque amet eaque nulla eligendi dolor delectus placeat ducimus dolores modi eveniet magni. Esse quia doloribus nisi id earum dicta cupiditate ab ducimus hic placeat quaerat autem, nihil mollitia dolorum vitae neque sed totam at magnam necessitatibus eligendi saepe velit facilis soluta! Repellat explicabo doloribus dolor, eveniet velit officia aspernatur, quasi et cum libero ipsum deserunt cupiditate eius sunt ullam eaque.</p> 
                                   <p class="text-right" id="nombre-empresa">
                                    AQP-TRAVEL
                                  </p>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <div class="card-header" role="tab" id="headingThree">
                                <h5 class="mb-0">
                                  <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <h4 class="asunto-mensaje font-italic">BIENVENIDO A AQP-TRAVEL</h4> <p class="font-italic  fecha-mensaje">Noviembre 20<p>
                                  </a>
                                </h5>
                              </div>
                              <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body">
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam aut laborum dolores, ex voluptate soluta eveniet sed, quod accusantium aspernatur cum similique voluptates delectus reprehenderit.</p>
                                  <p class="text-right" id="nombre-empresa">
                                    AQP-TRAVEL
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>     
        


                    </div>
                  </div>    




              </div>
            </div>
            
          </div>
        </div>
        
      </div>
      
    </section>

    <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Contacto</h3>
          <p class="section-description">Para mayor información de nuestros servicios:</p>
        </div>
      </div>

     

      <div class="container wow fadeInUp">
        <div class="row justify-content-center">

          <div class="col-lg-3 col-md-4">

            <div class="info">
              <div>
                <i class="fa fa-map-marker"></i>
                <p>A108 Elm Street<br>Arequipa</p>
              </div>

              <div>
                <i class="fa fa-envelope"></i>
                <p>apqtravel@gmail.com</p>
              </div>

              <div>
                <i class="fa fa-phone"></i>
                <p> 123411</p>
              </div>
            </div>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <div id="sendmessage">Mensaje Enviado</div>
              <div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Correo" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Asunto" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Mensaje"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit">Enviar Mensaje</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>AQPTravel</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Regna
        -->
        Epis Team<a href="https://bootstrapmade.com/">EPISUNSA</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="<c:url value="/resources/lib/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/jquery/jquery-migrate.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
  <script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>"></script>

  <script src="<c:url value="/resources/contactform/contactform.js"/>"></script>
  <script src="<c:url value="/resources/js/main.js"/>"></script>
  <script src="<c:url value="/resources/js/star-rating.js"/>"></script>

  <script type="text/javascript">
    $(function () {
      $('[data-toggle="popover"]').popover()
    })
  </script>
  <script>

    $('#myTab a').on('click', function (e) {
      e.preventDefault()
      $(this).tab('show')
    })
  </script>
  <script type="text/javascript">
    $("#fecha_ida").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
    $("#fecha_regreso").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
  </script>
  <script>
        jQuery(document).ready(function () {
           
            $('.btn-danger').on('click', function () {
                $("#input-21e").rating('destroy');
            });

            $('.btn-success').on('click', function () {
                $("#input-21e").rating('create');
            });



            $('.rb-rating').rating({
                'showCaption': true,
                'stars': '3',
                'min': '0',
                'max': '3',
                'step': '1',
                'size': 'xs',
                'starCaptions': {0: 'status:nix', 1: 'status:wackelt', 2: 'status:geht', 3: 'status:laeuft'}
            });
          
        });
    </script>
	
</body>
</html>