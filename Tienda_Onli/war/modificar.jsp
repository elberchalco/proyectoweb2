
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
						<li><a href="#"><span class="live"> </span></a></li>
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
							<input style="border: #000 0px solid; color: #FBF7F7; background-color: transparent" type="submit" value="Bienvenido admin">
						</form>
					</div>
					<div class="down-top top-down" >
						<form name="input" action="cerrarAdmin" method="post" >
							<input  style="border: #000 0px solid; color: #FBF7F7; background-color: transparent" type="submit" id="Cerrar Sesion." 
							value="Cerrar Sesion." name="enviar" >
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
					
					<div class="clearfix"> </div>
				</div>
				
				<div class="clearfix"> </div>	
			</div>
		</div>
	</div>
	<!---->
	<div class="container"> 
			         
		<div class="register">
		
       <!--<form action="modificar" method="get">-->
       
		  	  <form action="modificar" method="post" > 
		  	  
				 <div class="  register-top-grid">
					<h3>INFORMACION PERSONAL</h3>
					<div class="mation">
					    <span>Usuario : <label>*</label></span>
						 <input type="text" name="usuario" id="usuario"> 
						 
						 <span>Clave: <label>*</label></span>
						 <input type="text" name="clave" id="clave"> 
						<span>Nombre :<label>*</label></span>
						<input type="text" name="nombre" id="nombre"> 
					
						<span>Apellido :<label>*</label></span>
						<input type="text" name="apellido" id="apellido"> 
						
						<span>Sexo : <label>*</label></span>
						 <input type="text" name="sexo" id="sexo"> 
						
						 <span>DNI : <label>*</label></span>
						 <input type="text" name="dni" id="dni">  
						
						<span>Correo Electronico : <label>*</label></span>
						 <input type="text" name="correo" id="correo"> 
						 					
					 	<span>Celular : <label>*</label></span>
						 <input type="text" name="celular" id="celular"> 
							
						<br>
						<br>	
					   <input type="submit"  value="guardar" class="register-but">	 
					   
					   </form>
						 
					<div class="register-but">
				   <div class="clearfix">
						 </div>
						 </div>
										
						<!-- <input type="submit" value="Guardar">-->
					</div>
				<form>
					 <div class="clearfix"> </div>
					    <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>REGSTRATE</label>
					   </a>
					 </div>
				    
				</form>
				<div class="clearfix"> </div>
		   </div>
		   <div class="sub-cate">
				<div class=" top-nav rsidebar span_1_of_left">
					<h3 class="cate">MENU</h3>
		 <ul class="menu">
		 <ul class="kid-menu ">
				<li><a href="cuenta.html">Cuenta</a></li>	
			</ul>
		 
		<li class="item1"><a href="#">Producto<img class="arrow-img" src="images/arrow1.png" alt=""/> </a>
			<ul class="cute">
				<li class="subitem1"><a href="registrarpro.html">Agregar nuevo</a></li>
				<li class="subitem2"><a href="actualizarpro.html">Actualizar</a></li>
			
			</ul>
		</li>
		
		<ul class="kid-menu ">
				<li><a href="listadeusuarios.jsp">lista de usuarios</a></li>
				<li ><a href="eliminar.jsp">Eliminar Usuario</a></li>
				<li><a href="">Mejores Productos</a></li>
				<li><a href="">Consultas</a></li>
				<li><a href="product.html"></a></li>
				
				<li class="menu-kid-left"><a href="">Contactanos</a></li>
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