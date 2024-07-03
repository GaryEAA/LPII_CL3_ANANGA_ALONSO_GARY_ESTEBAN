package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClassUsuarioImp;
import model.TblUsuariocl3;

/**
 * Servlet implementation class ControladorUsuario
 */
public class ControladorUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ClassUsuarioImp usuarioDAO;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorUsuario() {
        super();
        usuarioDAO = new ClassUsuarioImp();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
        String accion = request.getParameter("accion");

        if (accion != null && accion.equals("Salir")) {
            // Manejar la acci�n de salir (cerrar sesi�n)
            HttpSession session = request.getSession(false); // false no crea una nueva sesi�n si no existe
            if (session != null) {
                session.invalidate(); // Invalida la sesi�n existente
            }
            // Redirigir al usuario a la p�gina de inicio de sesi�n u otra p�gina
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        } else {
            // Manejo predeterminado para otras acciones, si es necesario
            response.getWriter().append("Served at: ").append(request.getContextPath());
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");

	    TblUsuariocl3 usuario = new TblUsuariocl3();
	    usuario.setUsuariocl3(username);

	    TblUsuariocl3 usuarioEncontrado = usuarioDAO.BuscarUsuario(usuario);

	    if (usuarioEncontrado != null) {
	        // Verificar la contrase�a
	        if (usuarioEncontrado.getPasswordcl3().equals(password)) {
	            // Login exitoso
	            HttpSession session = request.getSession();
	            session.setAttribute("usuario", usuarioEncontrado);
	            response.sendRedirect(request.getContextPath() + "/index.jsp");
	        } else {
	            // Contrase�a incorrecta
	            String mensajeError = "Usuario o contrase�a incorrectos. Por favor, int�ntelo de nuevo.";
	            request.setAttribute("mensaje", mensajeError);
	            request.getRequestDispatcher("login.jsp").forward(request, response);
	        }
	    } else {
	        // Usuario no encontrado
	        String mensajeError = "Usuario o contrase�a incorrectos. Por favor, int�ntelo de nuevo.";
	        request.setAttribute("mensaje", mensajeError);
	        request.getRequestDispatcher("login.jsp").forward(request, response);
	    }
	}

}
