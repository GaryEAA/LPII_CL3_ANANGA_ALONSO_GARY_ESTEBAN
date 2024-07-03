<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registrar Producto</title>
    <!-- Incluir Bootstrap CSS desde un CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container">
        <h1 class="text-center mt-5 mb-4">Registrar Producto</h1>

        <form action="ControladorProducto" method="post">

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" required>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="pventa">Precio de Venta</label>
                        <input type="number" class="form-control" id="pventa" name="pventa" step="0.01" min="0" required>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="pcompra">Precio de Compra</label>
                        <input type="number" class="form-control" id="pcompra" name="pcompra" step="0.01" min="0" required>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="estado">Estado</label>
                        <select class="form-control" id="estado" name="estado" required>
                            <option value="Disponible">Disponible</option>
                            <option value="Agotado">Agotado</option>
                            <option value="En espera">En espera</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="descripcion">Descripción</label>
                        <textarea class="form-control" id="descripcion" name="descripcion" rows="4" required></textarea>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary">Registrar</button>
                        <a href="FormRegistrarProducto.jsp" class="btn btn-warning d-inline-block">Limpiar</a>
                        <a href="ControladorProducto?accion=Listar" class="btn btn-danger d-inline-block">Volver</a>
                    </div>
                </div>
            </div>

        </form>
    </div>

    <!-- Incluir Bootstrap JS y dependencias opcionales al final del body -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
