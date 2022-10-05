import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class Registration extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			ServletContext sc = getServletConfig().getServletContext();
			String s1=request.getParameter("userid");
			String s2=request.getParameter("password");
			String s3=request.getParameter("cnfpassword");
			String s4=request.getParameter("fname");
			String s5=request.getParameter("lname");
			String s6=request.getParameter("email");
			String s7=request.getParameter("phone");
			String s8=request.getParameter("occupation");
			String s9=request.getParameter("address");
			String s10=request.getParameter("city");
			String s11=request.getParameter("state");
			String s12=request.getParameter("pin");
			String s13=request.getParameter("country");
			String Reg="Registration Completed";
			int i=0;

			try
			{
				DbConnection database=new DbConnection();
				Connection conn=database.getConnect();
				PreparedStatement st=conn.prepareStatement("insert into UserRegistration values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
				st.setString(1,s1);
				st.setString(2,s2);
				st.setString(3,s3);
				st.setString(4,s4);
				st.setString(5,s5);
				st.setString(6,s6);
				st.setString(7,s7);
				st.setString(8,s8);
				st.setString(9,s9);
				st.setString(10,s10);
				st.setString(11,s11);
				st.setString(12,s12);
				st.setString(13,s13);
				
				int a=st.executeUpdate();
				System.out.println(i);
				RequestDispatcher rd=sc.getRequestDispatcher("/login.jsp?Rg="+Reg);
				rd.include(request,response);
				st.close();
//out.println("<h1> user registered");
				

				
			}
			catch (Exception e)
			{
				e.printStackTrace();
out.println("<h1>Error :"+ e);	
			}

			//out.println("userid   "+s1+"pass   "+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13);
		/*	try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con=DriverManager.getConnection("jdbc:odbc:rich");
				PreparedStatement st=con.prepareStatement("insert into user registration values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
				st.setString(1,s1);
				st.setString(2,s2);
				st.setString(3,s3);
				st.setString(4,s4);
				st.setString(5,s5);
				st.setString(6,s6);
				st.setString(7,s7);
				st.setString(8,s8);
				st.setString(9,s9);
				st.setString(10,s10);
				st.setString(11,s11);
				st.setString(12,s12);
				st.setString(13,s13);
				//st.setInt(14,i);
			//	ResultSet rs;
				int a=st.executeUpdate();
				System.out.println(i);
				RequestDispatcher rd=sc.getRequestDispatcher("/login.jsp?Rg="+Reg);
				rd.include(request,response);
				st.close();
				out.close();
				


				
			}
			catch (Exception ex)
			{
				ex.printStackTrace();
			}*/
		
out.close();


		}

}
