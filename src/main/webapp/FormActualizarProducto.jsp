<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.TblProductocl3" %> 
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Actualizar Producto</title>
    <!-- Incluir Bootstrap CSS desde un CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body class="bg-light">
    <div class="container mt-5">
        <h1 class="text-center">Actualizar Producto</h1>

        <form method="post" action="ControladorProducto" class="mt-4">

            <%
			 String codigo=request.getAttribute("codigo").toString();
			 String nombre=(request.getAttribute("nombre")!=null)?request.getAttribute("nombre").toString():"";
			 String pventa=(request.getAttribute("pventa")!=null)?request.getAttribute("pventa").toString():"";
			 String pcompra=(request.getAttribute("pcompra")!=null)?request.getAttribute("pcompra").toString():"";
			 String estado=(request.getAttribute("estado")!=null)?request.getAttribute("estado").toString():"";
			 String descripcion=(request.getAttribute("descripcion")!=null)?request.getAttribute("descripcion").toString():"";  
			%>
            <input type="hidden" name="codigo" value="<%= codigo %>">

            <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Nombre:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nombre" name="nombre" value="<%= nombre %>" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="pventa" class="col-sm-2 col-form-label">Precio de Venta:</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="pventa" name="pventa" value="<%= pventa %>" step="0.01" min="0" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="pcompra" class="col-sm-2 col-form-label">Precio de Compra:</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="pcompra" name="pcompra" value="<%= pcompra %>" step="0.01" min="0" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="estado" class="col-sm-2 col-form-label">Estado:</label>
                <div class="col-sm-10">
                    <select class="form-control" id="estado" name="estado" required>
                        <option value="Disponible" <%= estado.equals("Disponible") ? "selected" : "" %>>Disponible</option>
                        <option value="Agotado" <%= estado.equals("Agotado") ? "selected" : "" %>>Agotado</option>
                        <option value="En espera" <%= estado.equals("En espera") ? "selected" : "" %>>En espera</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="descripcion" class="col-sm-2 col-form-label">Descripción:</label>
                <div class="col-sm-10">
                    <textarea class="form-control" id="descripcion" name="descripcion" rows="4" required><%= descripcion %></textarea>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-12 text-center">
                    <button type="submit" class="btn btn-primary">Actualizar</button>
					<a href="ControladorProducto?accion=Listar" class="btn btn-danger d-inline-block">Volver</a>
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
