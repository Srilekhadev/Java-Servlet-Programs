import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Sign extends HttpServlet
	{ 
		public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
		{
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();	
			pw.println("Hai");
		}	 
			
	      		
}