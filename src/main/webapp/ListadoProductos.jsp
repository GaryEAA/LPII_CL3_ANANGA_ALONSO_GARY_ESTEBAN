<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="model.TblProductocl3" %>  
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Listado de Productos</title>
    <!-- Incluir Bootstrap CSS desde un CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Listado de Productos</h1>
		<div class="text-center mb-3">
		    <a href="FormRegistrarProducto.jsp" class="btn btn-primary d-inline-block mr-2">Registrar Producto</a>
		    <a href="index.jsp" class="btn btn-danger d-inline-block">Ir al Menú</a>
		</div>
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Código</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">P.Venta</th>
                    <th scope="col">P.Compra</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Descripción</th>
                    <th scope="col" colspan="2" class="text-center">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% 
                List<TblProductocl3> listadodeproductos = (List<TblProductocl3>) request.getAttribute("listadodeproductos");
                if (listadodeproductos != null) {
                    for (TblProductocl3 producto : listadodeproductos) {
                %>
                <tr>
                    <td><%= producto.getIdproductoscl3() %></td>
                    <td><%= producto.getNombrecl3() %></td>
                    <td><%= producto.getPrecioventacl3() %></td>
                    <td><%= producto.getPreciocompcl3() %></td>
                    <td><%= producto.getEstadocl3() %></td>
                    <td><%= producto.getDescripcl3() %></td>
                    <td><a href="ControladorProducto?accion=Modificar&cod=<%= producto.getIdproductoscl3() %>" class="btn btn-success">Actualizar</a></td>
                    <td><a href="ControladorProducto?accion=Eliminar&cod=<%= producto.getIdproductoscl3() %>" class="btn btn-danger">Eliminar</a></td>
                </tr>
                <% 
                    }
                } else {
                %>
                <tr>
                    <td colspan="7" class="text-center">No hay productos registrados.</td>
                </tr>
                <% 
                }
                %>
            </tbody>
        </table>
    </div>
    <!-- Incluir Bootstrap JS y dependencias opcionales al final del body -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
