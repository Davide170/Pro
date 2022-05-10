package servlet.com;

import jakarta.servlet.RequestDispatcher;





import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement; 

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		 String n = request.getParameter("nome");
		 String p = request.getParameter("password");
		 Connection con=Connessione.getCon();
		 try {
			
			 Statement smt=con.createStatement();   
			 ResultSet rs=smt.executeQuery("select nome, password from utente");
			 while(rs.next()) {
				if (rs.getString("nome").equalsIgnoreCase(n)&& rs.getString("password").equalsIgnoreCase(p)) {
					HttpSession sh = request.getSession();
					sh.setAttribute("nome", n);
					response.sendRedirect("Successo.jsp");
				}
			 }
			    out.println("ERRORE!!! Nome utente o password errati");
			    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.include(request, response);
		} catch (Exception e) {
			System.out.println(e);		}
	}

}
