package servlet.com;

import jakarta.servlet.RequestDispatcher;



import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import mypackage.Connessione;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



/**
 * Servlet implementation class Registra
 */
public class Registra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registra() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String nome = request.getParameter("nome");
		String password = request.getParameter("password");
		String Ppassword = request.getParameter("Ppassword");
	
		try {
			Connection con=Connessione.getCon();
			
			if(password.equals(Ppassword)){
				PreparedStatement smt2 = con.prepareStatement("insert into utente (nome,password) values (?,?)");
				smt2.setString(1, nome);
				smt2.setString(2,password);
				smt2.executeUpdate();
			int i=1;
			if(i>0) {
				//out.println("Ti sei registrato con successo");
				HttpSession sh = request.getSession();
				sh.setAttribute("nome", nome);
				response.sendRedirect("Successo.jsp");
			}
			}else{
				out.println("ERRORE!!! Nome utente o password errai");
			    RequestDispatcher rd = request.getRequestDispatcher("Registrazione.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
