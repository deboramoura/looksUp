<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ taglib uri ="/WEB-INF/tld/tags.tld" prefix ="tg"%>

<!DOCTYPE html>
<html>
<head>
<title>Contato | LooksUp : Store</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<script src="js/jquery.min.js"></script>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->
</head>
<body>
<!--header-->
<%@ include file= "views/header.jsp" %>

<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Contato</h1>
        <em></em>
        <h2><a href="index.jsp">Home</a><label>/</label>Contato</h2>
    </div>
</div>	

<div class="contact">
        <div class="contact-form">
            <div class="container">
                <div class="col-md-6 contact-left">
                        <h3>Looks Up Store</h3>
                        <p>A Looks Up Store est� sempre dispon�vel para atend�-lo. Contate-nos por telefone, e-mail ou nos mande uma mensagem pelo site.</p>


                <div class="address">
                    <div class=" address-grid">
                        <i class="glyphicon glyphicon-map-marker"></i>
                        <div class="address1">
                                <h3>Endere�o</h3>
                                <p>Rua das Flores, 
                                109, Fortaleza. CEP 60421-751</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class=" address-grid ">
                        <i class="glyphicon glyphicon-phone"></i>
                        <div class="address1">
                        <h3>Nosso Telefone: <h3>
                                <p> +123456789</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class=" address-grid ">
                        <i class="glyphicon glyphicon-envelope"></i>
                        <div class="address1">
                        <h3>Email:</h3>
                                <p><a href="mailto:deboramoura@alu.ufc.br"> deboramoura@alu.ufc.br</a></p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class=" address-grid ">
                        <i class="glyphicon glyphicon-bell"></i>
                        <div class="address1">
                                <h3>Hor�rio de Funcionamento:</h3>
                                <p>Segunda-Sexta, 7H-16H</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
        </div>
        <div class="col-md-6 contact-top">
                <h3>Envie-nos uma mensagem</h3>
                <p>Costumamos reponder em at� 8 horas �teis.<br>
                   Hora Atual: <b>  </b> </p>
                <tg:horaAtual />
                <form>
                    <div>
                        <span>Seu nome </span>		
                        <input type="text" value="" >						
                    </div>
                    <div>
                        <span>Seu email </span>		
                        <input type="text" value="" >						
                    </div>
                    <div>
                        <span>Assunto</span>		
                        <input type="text" value="" >	
                    </div>
                    <div>
                        <span>Sua mensagen</span>		
                        <textarea> </textarea>	
                    </div>
                    <label class="hvr-skew-backward">
                        <input type="submit" value="Enviar" >
                    </label>
                </form>						
        </div>
    <div class="clearfix"></div>
    </div>
    </div>
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
    </div>
</div>

<!--//contact-->
<!--brand-->
		<div class="container">
			<div class="brand">
				<div class="col-md-3 brand-grid">
					<img src="images/ic.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic1.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic2.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic3.png" class="img-responsive" alt="">
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			<!--//brand-->
			</div>
			
		</div>
	<!--//content-->

<!--//footer-->
<%@ include file= "views/footer.jsp" %>
<!--//footer-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
 
</body>
</html>