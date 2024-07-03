<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Logueo de Usuario</title>
    <!-- Incluir Bootstrap CSS desde un CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container my-5">
        <div class="row justify-content-center">

            <div class="col-md-6 col-lg-4">
                <!-- Usar clases de Bootstrap para el marco -->
                <div class="border rounded p-4 bg-white shadow-sm">
                    <form action="ControladorUsuario" method="post">
                    	<h2 class="text-center mb-4">Login Usuario</h2>
                        <div class="text-center mb-4">
			            	<img src="usuario.png" class="rounded-circle" alt="Usuario" width="100" height="100">
			        	</div>
                        <div class="form-group">
                            <label for="username">Usuario:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-primary btn-block">Iniciar Sesión</button>
                        </div>
                    </form>

                    <% String mensajeError = (String) request.getAttribute("mensaje"); %>
                    <% if(mensajeError != null && !mensajeError.isEmpty()) { %>
                    <div class="alert alert-danger text-center mt-3" role="alert">
                        <%= mensajeError %>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>

    <!-- Incluir Bootstrap JS y dependencias opcionales al final del body -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
