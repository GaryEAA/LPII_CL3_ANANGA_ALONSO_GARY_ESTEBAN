package testEntidades;

import java.util.List;

import dao.ClassProductoImp;
import model.TblProductocl3;

public class TestEntidadProducto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ClassProductoImp crud=new ClassProductoImp();
		/*
		//realizamos la respectiva instancia de las clases...
		TblProductocl3 producto=new TblProductocl3();

		//asignamos valores
		producto.setNombrecl3("ERP-SOFWAM LITE");
		producto.setPrecioventacl3(500.00);
		producto.setPreciocompcl3(350.00);
		producto.setEstadocl3("Agotado");
		producto.setDescripcl3("ERP ligero y económico para startups y empresas emergentes.");
		

		//invocamos al metodo registrar...
		crud.RegistrarProducto(producto);
		*/
		/*
		//testeamos el metodo listado
		List<TblProductocl3> listado=crud.ListadoProducto();
		//aplicamos un bucle for...
		for(TblProductocl3 lis:listado){
			
			//imprimimos por pantalla
			System.out.println("Nombre: "+lis.getNombrecl3()+"\n"+
					           "P.Venta: "+lis.getPrecioventacl3()+"\n"+
					           "P.Compra "+lis.getPreciocompcl3()+"\n"+
					           "Estado: "+lis.getEstadocl3()+"\n"+
					           "Descripción: "+lis.getDescripcl3()+"\n");
		}
		*/
		
	}

}
