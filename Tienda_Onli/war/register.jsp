<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/registro.js"></script>
<title>Tienda Online </title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts--> 
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script src="js/jquery.min.js"></script>


</head>
<body> 
	<!--header-->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul class="support">
						<li><a href="#"><label> </label></a></li>
						<li><a href="#"><span class="live"></span></a></li>
					</ul>
					<ul class="support">
						<li class="van"><a href="#"><label> </label></a></li>
						<li><a href="#"> <span class="live"></span></a></li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="top-header-right">
					<div class="down-top">
						<form name="input"  >
							<input style="border: #000 0px solid; color: #FBF7F7; background-color: transparent" type="submit" value="Contacte con Nosotros">
						</form>
					</div>
					<div class="down-top top-down">
						<form name="input"  >
							<input  style="border: #000 0px solid; color: #FBF7F7; background-color: transparent" type="submit" value="Iniciar Sesion">
						</form>
					</div>
					<div class="clearfix"> </div>	
				</div>
				<div class="clearfix"> </div>		
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="header-bottom-left">
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt=" " /></a>
					</div>
					<div class="search">
						<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
						<input type="submit"  value="BUSCAR">

					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="header-bottom-right">					
						<div class="account"><a href="login.html"><span> </span>SU CUENTA</a></div>
							<ul class="login">
								<li><a href="login.html"><span> </span>INICIAR SECION</a></li> |
								<li ><a href="register.jsp">REGISTRATE</a></li>
							</ul>
						<div class="cart"><a href="#"><span> </span>CARRO</a></div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>
	</div>
	<!---->
	<div class="container"> 
			         
		<div class="register">
		 
		  <form action="registro" method="post"  autocomplete="off">
		 
		  	   <div class="  register-top-grid">
					<h3>INFORMACION PERSONAL</h3>
					<div class="mation">
						<span>Nombre :<label>*</label></span>
						<input type="text" name="nombre" id="nombre" placeholder="Nombre"> 
					
						<span>Apellido :<label>*</label></span>
						<input type="text" name="apellido" id="apellido" placeholder="Apellidos"> 
						
						<span>Sexo : <label>*</label></span>
						 <input type="text" name="sexo" id="sexo" placeholder="Sexo"> 
						
						 <span>DNI : <label>*</label></span>
						 <input type="text" name="dni" id="dni" placeholder="Dni">  
						
						<span>Correo Electronico : <label>*</label></span>
						 <input type="text" name="email" id="email" placeholder="Correo electronico"> 
						 					
					 	<span>Celular : <label>*</label></span>
						 <input type="text" name="celular" id="celular" placeholder="Celular"> 
							 
						 <span>Direccion : <label>*</label></span>
						 <input type="text" name="direccion" id="direccion" placeholder="Direccion"> 
						 
						 <span>Usuario : <label>*</label></span>
						 <input type="text" name="usuario" id="usuario" placeholder="Usuario"> 
						 
						 <span>Clave: <label>*</label></span>
						 <input type="text" name="clave" id="clave" placeholder="Clave"> 
						 <br>
						<br>	
					   <input type="submit"  value="REGISTRAR" class="register-but" >	 
					   
					   </form>
						 
					<div class="register-but">
				   <div class="clearfix">
						 </div>
						 </div>
										
						<!-- <input type="submit" value="Guardar">-->
					</div>
					 <div class="clearfix"> </div>
					    <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>REGSTRATE</label>
					   </a>
					 </div>
				    
				
				<div class="clearfix"> </div>
		   </div>
		   <div class="sub-cate">
				<div class=" top-nav rsidebar span_1_of_left">
					<h3 class="cate">CATEGORIAS</h3>
		 <ul class="menu">
		
		<li class="item1"><a href="#">Chicas<img class="arrow-img" src="images/arrow1.png" alt=""/> </a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Faldas </a></li>
				<li class="subitem2"><a href="product.html">Camisas </a></li>
				<li class="subitem3"><a href="product.html">Blusas </a></li>
			</ul>
		</li>
		<li class="item2"><a href="#">Chicos<img class="arrow-img " src="images/arrow1.png" alt=""/></a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Pantalones </a></li>
				<li class="subitem2"><a href="product.html">Camisas </a></li>
				<li class="subitem3"><a href="product.html">Chompas </a></li>
			</ul>
		</li>
		<li class="item3"><a href="#">Complementos<img class="arrow-img img-arrow" src="images/arrow1.png" alt=""/> </a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Accesirios </a></li>
				<li class="subitem2"><a href="product.html">Bisuteria </a></li>
				<li class="subitem3"><a href="product.html">Bolsos y Cinturones</a></li>
			</ul>
		</li>
		<li class="item4"><a href="#">Calzado <img class="arrow-img img-left-arrow" src="images/arrow1.png" alt=""/></a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Calzados Chica </a></li>
				<li class="subitem2"><a href="product.html">Zapatos </a></li>
				<li class="subitem3"><a href="product.html">Botas & Botines </a></li>
			</ul>
		</li>
		<ul class="kid-menu ">
				<li><a href="product.html">Precio Especial</a></li>
				<li ><a href="product.html">Accesorios</a></li>
				<li class="menu-kid-left"><a href="contact.html">Contactenos</a></li>
			</ul>
		
	</ul>
					</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
					<div class=" chain-grid menu-chain">
	   		     		<a href="single.html"><img class="img-responsive chain" src="images/wat.jpg" alt=" " /></a>	   		     		
	   		     		<div class="grid-chain-bottom chain-watch">
		   		     		<span class="actual dolor-left-grid"></span>
		   		     		<span class="reducedfrom"></span>  
		   		     		<h6></h6>  		     			   		     										
	   		     		</div>
	   		     	</div>
	   		     	 <a class="view-all all-product" href="product.html">VER TODOS LOS PRODUCTOS<span> </span></a> 	
			</div>      
	</div>
	<!---->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>Hoja Informativa</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Ingrese correo electrónico aquí"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Ingrese correo electrónico aquí';}" />
							<input type="submit" value="SUSCRIBIR" /> 
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="latter-right">
					<p>SIGUENOS</p>
					<ul class="face-in-to">
						<li><a href="#"><span> </span></a></li>
						<li><a href="#"><span class="facebook-in"> </span></a></li>
						<div class="clearfix"> </div>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-bottom">
			
		</div>
	</div>
</body>
</html>