<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<html>
<head>
<title>Tienda Online</title>
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
						<li><a href="#"> <span class="live"> </span></a></li>
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
						<a href="administrador.html"><img src="images/logo.png" alt=" " /></a>
					</div>
					
					<div class="clearfix"> </div>
				</div>
				<div class="header-bottom-right">					
						
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>
	</div>
	<!---->
	<div class="container">
		
      	  <div class="register">
		  	  <form action=remove method=GET> 
				 <div class="  register-top-grid">
					<h3>ELIMINAR USUARIO: </h3>

					<div class="mation">
						<span>USUARIO : <label>*</label></span>
						<input type="text" name=cod placeholder="Ingrese usuario "> 
					
					<h3></h3>
 
					</div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>REGISTRATE</label>
					   </a>
					 </div>
				    
				    <input type=button value=ELIMINAR onClick="remove()"> 
				      
				</form>
				<div class="clearfix"> </div>
				<div class="register-but">
				   <form>
					   
					   <div class="clearfix"> </div>
				   </form>
				</div>
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
				<li><a href="listadeusuarios.jsp">Lista de Usuarios</a></li>
				<li ><a href="eliminar.jsp">eliminar usuario</a></li>
				<li><a href="#">Mejores Productos</a></li>
				<li><a href="#">Consultas</a></li>
				<li><a href="#"></a></li>
				
				<li class="menu-kid-left"><a href="administrador.html">Contactanos</a></li>
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
					
		</div>
			  <div class="clearfix"> </div>
      	 </div>
	<!---->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>HOJA INFORMATIVA</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Ingrese correo electr�nico aqu�"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter email here';}" />
							<input type="submit" value="SUSCRIBIR" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="latter-right">
					<p>CONTACTENOS</p>
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