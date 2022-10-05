import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSetMetaData;
import java.util.Vector;
import java.util.Iterator;


public class Result1 extends HttpServlet
{
	Vector vec=new Vector();
	Vector vec1=new Vector();
	Vector vec2=new Vector();
	Vector vec3=new Vector();

	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
	{
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String str="";
		HttpSession session=request.getSession();

		try
		{
			PrintWriter out=response.getWriter();
			str=request.getParameter("sql");
			pw.println(str);
			System.out.println("Query : "+str);
			str=str.trim();

			//String form=(String)session.getAttribute("form");
			//System.out.println("ffffffffffffffffffffffff"+form);


			
			String form1=request.getParameter("formname");
			System.out.println("rrrr"+form1);

			DbConnection database=new DbConnection();
			Connection conn=database.getConnect();
			Statement st=conn.createStatement();			
			ResultSet rs=st.executeQuery(str);

			ResultSetMetaData rsMetaData = rs.getMetaData();

			int numberOfColumns = rsMetaData.getColumnCount();

			session.setAttribute("columnvalue",numberOfColumns);
			System.out.println("resultSet MetaData column Count=" + numberOfColumns);

			for (int i = 1; i <= numberOfColumns; i++) 
			{
				  System.out.println("column MetaData ");
				  System.out.println("column number " + i);			
				  System.out.println(rsMetaData.getColumnName(i));			  
			}


			while(rs.next())
			{
				if(numberOfColumns==1)
				{
					vec.add(rs.getString(rsMetaData.getColumnName(1)));					
				}
				else if(numberOfColumns==2)
				{
					vec.add(rs.getString(rsMetaData.getColumnName(1)));
					vec1.add(rs.getString(rsMetaData.getColumnName(2)));
				}
				else if(numberOfColumns==3)
				{
					vec.add(rs.getString(rsMetaData.getColumnName(1)));
					vec1.add(rs.getString(rsMetaData.getColumnName(2)));
					vec2.add(rs.getString(rsMetaData.getColumnName(3)));
				}
				else if(numberOfColumns==4)
				{
					vec.add(rs.getString(rsMetaData.getColumnName(1)));
					vec1.add(rs.getString(rsMetaData.getColumnName(2)));
					vec2.add(rs.getString(rsMetaData.getColumnName(3)));
					vec3.add(rs.getString(rsMetaData.getColumnName(4)));
				}
			}



				if(numberOfColumns==1)
				{
					Iterator it=vec.iterator();
						{
							while(it.hasNext())
							{								
								System.out.println("1"+it.next().toString());
							}
						}

					String first=rsMetaData.getColumnName(1).toString();
					session.setAttribute("firstcolumn",first);
					session.setAttribute("Vector",vec);

					Validation valid=new Validation();
					Boolean result=valid.method(form1,vec,vec1,vec2,vec3);
					System.out.println(result);
					String res=result.toString();
					System.out.println("return value"+res);
					//session.setAttribute("result",result); 
								



					RequestDispatcher rd= getServletContext().getRequestDispatcher("/Seeresult.jsp?res="+res);
					rd.forward(request, response);

				}


				else if(numberOfColumns==2)
				{
					Iterator it=vec.iterator();
							{
								while(it.hasNext())
								{									
									pw.println("2"+it.next().toString());
								}
							}

					Iterator it1=vec1.iterator();
							{
								while(it1.hasNext())
								{									
									pw.println("2"+it1.next().toString());
								}
							}

					String first=rsMetaData.getColumnName(1).toString();
					session.setAttribute("firstcolumn",first);

					String second=rsMetaData.getColumnName(2).toString();
					session.setAttribute("secondcolumn",second);
					


					session.setAttribute("Vector",vec);
					session.setAttribute("Vector1",vec1);

					Validation valid=new Validation();
					Boolean result=valid.method(form1,vec,vec1,vec2,vec3);
					System.out.println(result);
					String res=result.toString();
					System.out.println("return value"+res);
					//session.setAttribute("result",result); 

					RequestDispatcher rd= getServletContext().getRequestDispatcher("/Seeresult.jsp?res="+res);
					rd.forward(request, response);

					//RequestDispatcher rd= getServletContext().getRequestDispatcher("/Seeresult.jsp?vec="+vec);
					//rd.forward(request, response);
					
				}
				else if(numberOfColumns==3)
				{
					Iterator it=vec.iterator();
						{
							while(it.hasNext())
							{
								pw.println("3"+it.next().toString());
							}
						}

					Iterator it1=vec1.iterator();
						{
							while(it1.hasNext())
							{
								pw.println("3"+it1.next().toString());
							}
						}

					Iterator it2=vec2.iterator();
						{
							while(it2.hasNext())
							{
								pw.println("3"+it2.next().toString());
							}
						}


					String first=rsMetaData.getColumnName(1).toString();
					session.setAttribute("firstcolumn",first);

					String second=rsMetaData.getColumnName(2).toString();
					session.setAttribute("secondcolumn",second);

					String third=rsMetaData.getColumnName(3).toString();
					session.setAttribute("thirdcolumn",third);
					


					session.setAttribute("Vector",vec);
					session.setAttribute("Vector1",vec1);
					session.setAttribute("Vector2",vec2);


					


					RequestDispatcher rd= getServletContext().getRequestDispatcher("/Seeresult.jsp");
					rd.forward(request, response);
				}
				else if(numberOfColumns==4)
				{

							Iterator it=vec.iterator();
									{
										while(it.hasNext())
										{							
											pw.println("4"+it.next().toString());
										}
									}

							Iterator it1=vec1.iterator();
									{
										while(it1.hasNext())
										{								
											pw.println("4"+it1.next().toString());
										}
									}

							Iterator it2=vec2.iterator();
									{
										while(it2.hasNext())
										{									
											pw.println("4"+it2.next().toString());
										}
									}

							Iterator it3=vec3.iterator();
									{
										while(it3.hasNext())
										{									
											pw.println("4"+it3.next().toString());
										}
									}

								String first=rsMetaData.getColumnName(1).toString();
								session.setAttribute("firstcolumn",first);

								String second=rsMetaData.getColumnName(2).toString();
								session.setAttribute("secondcolumn",second);

								String third=rsMetaData.getColumnName(3).toString();
								session.setAttribute("thirdcolumn",third);

								String four=rsMetaData.getColumnName(4).toString();
								session.setAttribute("fourthcolumn",four);

								session.setAttribute("Vector",vec);
								session.setAttribute("Vector1",vec1);
								session.setAttribute("Vector2",vec2);
								session.setAttribute("Vector3",vec3);

								Validation valid=new Validation();
								Boolean result=valid.method(form1,vec,vec1,vec2,vec3);
								System.out.println(result);
								String res=result.toString();
								System.out.println("return value"+res);
								//session.setAttribute("result",result); 
								



								RequestDispatcher rd= getServletContext().getRequestDispatcher("/Seeresult.jsp?res="+res);
								rd.forward(request, response);
			       }			

					st.close();
					conn.close();

			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}