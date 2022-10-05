import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class Keywords extends HttpServlet
{	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
	{
		response.setContentType("text/html");
		String str="";
		
		


		try
		{
			PrintWriter pw=response.getWriter();
			str=request.getParameter("sql");
			//pw.println("started");	
			//pw.println("requested is"+str);
			System.out.println(str);

			str=str.replaceAll(" ","&");
			pw.println(str);
			char firstcharacter;
			char secondcharacter;
			
			char prelastcharacter;
			char lastcharacter;


			String strarr[]=str.split("&");
			String temp="";
			DbConnection database=new DbConnection ();
			Connection conn=database.getConnect();
			Statement st=conn.createStatement();
			String key="";
			ResultSet rs=null;
				
			for (int i=0;i<strarr.length;i++)
			{
				String key1="";
				System.out.println("permanent "+strarr[i]);
				temp=strarr[i];
				System.out.println("temparary "+temp);
				System.out.println("temparary "+temp.length());
				//for (int j=0;j<temp.length();j++)
				if(temp.length()<=1)
				{
					firstcharacter=strarr[i].charAt(0);
					System.out.println(1);
					rs=st.executeQuery("select * from Keywords where Keywords like ('"+firstcharacter+"%') ");	
					
					while(rs.next())
					{						
						key+=rs.getString("Keywords")+"#";
						System.out.println("from first "+key);
						
					}
				}
				else if(temp.length()<=2)
				{
					
					System.out.println(2);
					firstcharacter=strarr[i].charAt(0);
					lastcharacter=strarr[i].charAt(strarr[i].length()-1);
					System.out.println(firstcharacter);
					System.out.println(lastcharacter);
					rs=st.executeQuery("select * from Keywords where Keywords like ('"+firstcharacter+"%%"+lastcharacter+"') ");

					while(rs.next())
					{						
						key+=rs.getString("Keywords")+"#";
						System.out.println("from second "+key);
						
					}
				}
				else if(temp.length()<=3)
				{
					key1="";	
					System.out.println(3);
					firstcharacter=strarr[i].charAt(0);
					lastcharacter=strarr[i].charAt(strarr[i].length()-1);
					System.out.println(firstcharacter);
					System.out.println(lastcharacter);
					rs=st.executeQuery("select * from Keywords where Keywords like ('"+firstcharacter+"%%"+lastcharacter+"') ");

					while(rs.next())
					{						
						key+=rs.getString("Keywords")+"#";
						key1="Keywords";
						System.out.println("from third "+key);						
						System.out.println("from third "+key1);						
					}
					if(key1.equals(""))
					{
						key+=temp+"#";
						System.out.println("Inside the if loop"+key);
					}
				}

				else
				{
					firstcharacter=strarr[i].charAt(0);
					secondcharacter=strarr[i].charAt(1);				
					lastcharacter=strarr[i].charAt(strarr[i].length()-1);
					System.out.println(firstcharacter);
					System.out.println(lastcharacter);
					System.out.println("third "+secondcharacter);
					rs=st.executeQuery("select * from Keywords where Keywords like ('"+firstcharacter+""+secondcharacter+"%%"+lastcharacter+"') ");

					while(rs.next())
					{						
						key+=rs.getString("Keywords")+"#";
						System.out.println("from four "+key);
						
					}
				}
				

				
				


			}
				System.out.println("key--------"+key);
				RequestDispatcher rd= getServletContext().getRequestDispatcher("/Result.jsp?key="+key);
				rd.forward(request, response);

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
