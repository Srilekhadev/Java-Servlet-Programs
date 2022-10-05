import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class loginResponse extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
				
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			ServletContext sc = getServletConfig().getServletContext();
			String s1=request.getParameter("userid");
			String s2=request.getParameter("password");
			
			try
			{
				DbConnection database=new DbConnection();
				Connection conn=database.getConnect();
				Statement st=conn.createStatement();
				ResultSet rs=st.executeQuery("select * from userregistration where userid='"+s1+"'and password='"+s2+"'");

				if(rs.next())
				{
					//String user=rs.getString("userid");
					//String pass=rs.getString("password");

					RequestDispatcher rd=sc.getRequestDispatcher("/index.jsp");
					rd.forward(request,response);
				}
				else
				{
					RequestDispatcher rd=sc.getRequestDispatcher("/login.jsp");
					rd.forward(request,response);

				}
				
				
				
				/*RequestDispatcher rd=sc.getRequestDispatcher("/login.jsp?Rg="+Reg);
				rd.include(request,response);*/
				st.close();
				out.close();


				
			}
			catch (Exception e)
			{
				e.printStackTrace();
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
			

		}

}
