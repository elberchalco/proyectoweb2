$(document).ready(function() {
	$('#registro').click(function() {		
		var usua= $('#usua').val();
		var clave = $('#clave').val();		
		var nombre = $('#nombre').val();
		var apellido = $('#apellido').val();
		var email = $('#email').val();
		var dni= $('#dni').val();
		var direccion= $('#direccion').val();
		var celular = $('#celular').val();
		var sexo = $('#sexo').val();
		var toString = "nombre = " + nombre + "\n" + "Apellido = " + apellido+ "\n" +
						"usuario = " + usua;
						
		var result = window.confirm('¿Seguro que quiere Guardar?\n' + toString);
        if (result == false) {
            return;
        };
    	$.get('registro',{"usua": usua, "clave": clave, "nombre": nombre,
    		"apellido": apellido,"email": email,"dni": dni,"direccion":direccion,"celular": celular,"sexo": sexo},
                function() { // on success
                    alert("Se Guardo .. Bien!");
                    window.location.href = "/register.html";
                })
                .fail(function() { //on failure
                	alert(" Error");
                });
	});
});

$(document).ready(function() {
	$('#usu').click(function() {
    	$.post('registrarServlet',{"usu": usu},
                function() { // on success
                    alert("Se Guardo .. Bien!");
                   // window.location.href = "/menu.jsp";
                })
                .fail(function() { //on failure
                	alert(" Error");
                });
	});
});