package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import interfaces.IUsuario;
import model.TblUsuariocl3;

public class ClassUsuarioImp implements IUsuario {

	@Override
	public void RegistrarUsuario(TblUsuariocl3 usuario) {
		// TODO Auto-generated method stub
		//establecer conexion con la unidad de persistencia...
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("LPII_CL3_ANANGA_ALONSO_GARY_ESTEBAN");
	    //permite gestionar entidades
		EntityManager em=fabr.createEntityManager();
		//iniciar transaccion
		em.getTransaction().begin();
		//registramos
		em.persist(usuario);
		//emitimos mensaje por consola
		System.out.println("Usuario registrado en la BD correctamente");
		//confirmamos
		em.getTransaction().commit();
		//cerramos la transaccion
		em.close();	
	}

	@Override
	public void ActualizarUsuario(TblUsuariocl3 usuario) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void EliminarUsuario(TblUsuariocl3 usuario) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public TblUsuariocl3 BuscarUsuario(TblUsuariocl3 usuario) {
		// TODO Auto-generated method stub
	    EntityManagerFactory fabr = Persistence.createEntityManagerFactory("LPII_CL3_ANANGA_ALONSO_GARY_ESTEBAN");
	    EntityManager em = fabr.createEntityManager();
	    em.getTransaction().begin();
	    
	    String jpql = "SELECT u FROM TblUsuariocl3 u WHERE u.usuariocl3 = :username";
	    TypedQuery<TblUsuariocl3> query = em.createQuery(jpql, TblUsuariocl3.class);
	    query.setParameter("username", usuario.getUsuariocl3());
	    
	    TblUsuariocl3 usuarioencontrado = null;
	    try {
	        usuarioencontrado = query.getSingleResult();
	    } catch (Exception e) {
	        // Posible excepción por usuario no encontrado o múltiples resultados.
	        e.printStackTrace(); // Para depuración
	    }
	    
	    em.getTransaction().commit();
	    em.close();
	    return usuarioencontrado;
	}

	@Override
	public List<TblUsuariocl3> ListadoUsuario() {
		// TODO Auto-generated method stub
		//establecemos la conexion con la unidad de persistencia..
        EntityManagerFactory fabr=Persistence.createEntityManagerFactory("LPII_CL3_ANANGA_ALONSO_GARY_ESTEBAN");
        //gestionamos las entidads
        EntityManager em=fabr.createEntityManager();
        //iniciamos la transaccion
        em.getTransaction().begin();
        //recuperamos los usuarios  de la base de datos
        //***********utilizando jpql
        List<TblUsuariocl3> listadousuario=em.createQuery("select c from TblUsuariocl3 c",TblUsuariocl3.class).getResultList();
        //confirmamos la transaccion
        em.getTransaction().commit();
        //cerramos
        em.close();
		return listadousuario;
	}

}
