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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;










/**
 * Servlet implementation class Prenotazione
 */
@WebServlet("/Prenotazione")
public class Prenotazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Prenotazione() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String data=request.getParameter("data");
		String ora=request.getParameter("ora");
		String codiceFiscal=request.getParameter("codiceFiscal");
	
		int datai=1;
		try {
			Connection con= Connessione.getCon();
			if(datai>0){
				PreparedStatement smt2 = con.prepareStatement("insert into prenota (data,ora,codiceFiscal) values (?,?,?)");
				smt2.setString(1, data);
				smt2.setString(2,ora);
				smt2.setString(3,codiceFiscal);
				smt2.executeUpdate();
			int i=1;
			if(i>0) {
				
				HttpSession sh = request.getSession();
				sh.setAttribute("data", data);
				sh.setAttribute("ora", ora);
				sh.setAttribute("codiceFiscal", codiceFiscal);
				response.sendRedirect("Successo.jsp");
				out.println("Ti sei prenotato con successo");
			}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

