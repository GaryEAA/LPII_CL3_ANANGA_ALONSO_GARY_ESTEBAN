<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Proyecto Maven con JPA WEB</title>
    <!-- Incluir Bootstrap CSS desde un CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container my-5">
        <h2 class="text-center mb-4">Proyecto Maven con JPA WEB</h2>

        <!-- Card Container -->
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card pt-3"  style="background-color: #c5dec9;">
                    <!-- Image for the product -->
                    <img src="producto.png" class="card-img-top mx-auto d-block" alt="Producto" style="width: 200px; height: auto;">
                    <div class="card-body text-center">
                        <a href="ControladorProducto?accion=Listar" class="btn btn-primary btn-lg btn-block">Mostrar listado de Productos</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bot�n de Cerrar Sesi�n -->
    <div class="row justify-content-center mt-4">
        <div class="col-md-6 text-center">
            <a href="ControladorUsuario?accion=Salir" class="btn btn-danger btn-lg btn-block">Cerrar Sesi�n</a>
        </div>
    </div>
    <!-- Incluir Bootstrap JS y dependencias opcionales al final del body -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
