<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuevo Cliente</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
    <main>
        <header>
            <h1>Activo Sportwear</h1>
            <h2 class="destacado">Moda deportiva para tu mejor versión</h2>
            <h4 id="favorito">Rinde más, luce mejor</h4>
            <div id="image"><img src="images/Logo.jpg" width="400" height="200" alt="Logo de Activo Sportwear"/></div>
        </header>
        
        <nav>
        	<a href="index.jsp">Home</a>
            <a href="consulta.jsp">Ver Todos Nuestros Productos</a>
            <a href="categoria.jsp">Buscar Por Categoría</a>
            <a href="login.jsp">Login</a>
        </nav>
	
   <div class="agrupar">
            <section>
			    <h3>Datos del Nuevo Cliente</h3>
				<p>
				
				<%	
					String usuario;
					HttpSession sesion = request.getSession();
					usuario = (String) session.getAttribute("usuario");
					
					String claveAnterior = request.getParameter("txtClaveA");
				    String claveNueva = request.getParameter("txtClaveN");
				    String claveConfirmar = request.getParameter("txtClaveR");
				    Usuario user = new Usuario();
				    Usuario user1 = user.buscarUsuario(usuario);
				    if(user1.verificarClave(claveAnterior)){
				    	if(user1.coincidirClave(claveNueva, claveConfirmar)){
                    		if(user1.cambiarClave(user1.getCorreo(), claveNueva)){
                    			response.sendRedirect("login.jsp");
                    		}
                    	}else{
                    		response.sendRedirect("cambioClave.jsp");
                    	}
				    }else{
				    	response.sendRedirect("cambioClave.jsp");
				    }
				
				%>
				
				</section>
            
            <aside>
                <a href="https://www.linkedin.com/in/steven-parra-02516b32b">Ver más información sobre los desarrolladores</a></br>
                <iframe src="https://www.google.com/maps/d/embed?mid=1EfbeRnJknOZ-F_WdFwZqUiwD3gqtczo&ehbc=2E312F" width="600" height="440"></iframe>
            </aside>
        </div>
        
        <footer>
            <ul>
                <li><a href="https://www.facebook.com/stevenalexis.bautistaleon/" target="_blank">
                	<img src="icons/facebook.png" width="30" height="30" alt="icono de facebook"/></a></li>
                <li><a href="https://www.instagram.com/_stevxxn/" target="_blank">
                	<img src="icons/instagram.png" width="30" height="30" alt="icono de instagram"/></a></li>
                <li><a href="https://www.tiktok.com/@_stevxxn" target="_blank">
                	<img src="icons/tik-tok.png" width="30" height="30" alt="icono de tiktok"/></a></li>
            </ul>
            <p><a href="https://maps.app.goo.gl/N1hiiY9HRbSv2oEz7" target="_blank">Ver nuestra ubicación en el mapa</a></br></p>
        </footer>
    </main>
</body>
</html>