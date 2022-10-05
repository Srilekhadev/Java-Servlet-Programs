import java.sql.*;
import java.util.Vector;
import java.util.Iterator;
import javax.servlet.http.*;
class Validation
{
	DbConnection database;
	Vector vec;
	Vector vec1;
	Vector vec2;
	Vector vec3;
	boolean result;

	public Boolean method(String form,Vector v,Vector v1,Vector v2,Vector v3)
	{

		database=new DbConnection();
		vec=new Vector();
		vec1=new Vector();
		vec2=new Vector();
		vec3=new Vector();
		Boolean b=false;
		System.out.println("Entered into the Validation page"+form);

		

		//Vector vec4=new Vector();
		//Vector vec5=new Vector();
		//Vector vec6=new Vector();
		//Vector vec7=new Vector();		

		if(form.equals("form1"))
		{
			b=form1(v,v1,v2,v3);			
			System.out.println(b);
		}
		else if(form.equals("form2"))
		{
			b=form2(v,v1,v2,v3);			
			System.out.println(b);
		}
		else if(form.equals("form3"))
		{
			//System.out.println("From Validation page"+form);
			b=form3(v,v1,v2,v3);
			System.out.println(b);
		}
		else if(form.equals("form4"))
		{
			b=form4(v,v1,v2,v3);
			System.out.println(b);
		}
		else if(form.equals("form5"))
		{
			b=form5(v,v1,v2,v3);
			System.out.println(b);
		}
		else if(form.equals("form6"))
		{
			b=form6(v,v1,v2,v3);
			System.out.println(b);
			
		}
		else if(form.equals("form7"))
		{
			System.out.println("From Validation page"+form);
		}
		else if(form.equals("form8"))
		{
			System.out.println("From Validation page"+form);
		}
		else if(form.equals("form9"))
		{
			System.out.println("From Validation page"+form);
		}
		else if(form.equals("form10"))
		{
			System.out.println("From Validation page"+form);
		}return b;


	}

	public Boolean form1(Vector v,Vector v1,Vector v2,Vector v3)
	{
		System.out.println("Entered into the FORM1");
		Boolean result=false;
		Boolean t=false;
		Boolean t1=false;
		Boolean t2=false;
		Boolean t3=false;
		try
			{				
				Connection conn=database.getConnect();
				Statement st=conn.createStatement();
				ResultSet rs=st.executeQuery("select * from customerdetails");

				while(rs.next())
				{
					//rs.getString(1);
					vec.add(rs.getString(1));
					vec1.add(rs.getString(2));
					vec2.add(rs.getString(3));
					vec3.add(rs.getString(4));
				}

				t=vec.equals(v);
				t1=vec1.equals(v1);
				t2=vec2.equals(v2);
				t3=vec3.equals(v3);

				String s1="true";
				if( (s1.equals(t.toString())) && (s1.equals(t1.toString())) && (s1.equals(t2.toString())) && (s1.equals(t3.toString())) )
				{					
					result=true;
					System.out.println(" Completely Matched "+result);					
				}

				System.out.println("Vector"+t);
				System.out.println("Vector 1 "+t1);
				System.out.println("Vector 2 "+t2);
				System.out.println("Vector 3 "+t3);
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return result;

	    }

  public Boolean form2(Vector v,Vector v1,Vector v2,Vector v3)
	{
		System.out.println("Entered into the FORM2");
		Boolean result=false;
		try
			{				
				Connection conn=database.getConnect();
				Statement st=conn.createStatement();
				ResultSet rs=st.executeQuery("select companyname,contactname from customerdetails");

				while(rs.next())
				{
					//rs.getString(1);
					vec.add(rs.getString(1));
					vec1.add(rs.getString(2));
					//vec2.add(rs.getString(3));
					//vec3.add(rs.getString(4));
				}
				int y=v2.size();
				int y1=v3.size();
				System.out.println("size of vector "+y);
				System.out.println("size of vector "+y1);

				Boolean t=vec.equals(v);
				Boolean t1=vec1.equals(v1);
				Boolean t2=vec2.equals(v2);
				Boolean t3=vec3.equals(v3);

				String s1="true";
				if(y==0&&y1==0)
				{
					if( (s1.equals(t.toString())) && (s1.equals(t1.toString())) )
					{					
						result=true;
						System.out.println(" Completely Matched "+result);					
					}
				}

				System.out.println("Vector"+t);
				System.out.println("Vector 1 "+t1);
				System.out.println("Vector 2 "+t2);
				System.out.println("Vector 3 "+t3);
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return result;

	    }

		 public Boolean form3(Vector v,Vector v1,Vector v2,Vector v3)
			{
				System.out.println("Entered into the FORM3");
				Boolean result=false;
				try
					{				
						Connection conn=database.getConnect();
						Statement st=conn.createStatement();
						ResultSet rs=st.executeQuery("select * from customerdetails where city between 'Berlin' and 'Paris' ");

						while(rs.next())
						{
							//rs.getString(1);
							vec.add(rs.getString(1));
							vec1.add(rs.getString(2));
							vec2.add(rs.getString(3));
							vec3.add(rs.getString(4));
						}				

						Boolean t=vec.equals(v);
						Boolean t1=vec1.equals(v1);
						Boolean t2=vec2.equals(v2);
						Boolean t3=vec3.equals(v3);

						String s1="true";	
						
						if( (s1.equals(t.toString())) && (s1.equals(t1.toString())) && (s1.equals(t2.toString())) && (s1.equals(t3.toString())) )
							{					
								result=true;
								System.out.println(" Completely Matched "+result);					
							}

						System.out.println("Vector"+t);
						System.out.println("Vector 1 "+t1);
						System.out.println("Vector 2 "+t2);
						System.out.println("Vector 3 "+t3);
						
					}
					catch (Exception e)
					{
						e.printStackTrace();
					}
					return result;

				}
			public Boolean form4(Vector v,Vector v1,Vector v2,Vector v3)
				{
					System.out.println("Entered into the FORM4");
					Boolean result=false;
					Boolean t=false;
					Boolean t1=false;
					Boolean t2=false;
					Boolean t3=false;
					try
						{				
							Connection conn=database.getConnect();
							Statement st=conn.createStatement();
							ResultSet rs=st.executeQuery("select * from customerdetails where contactname='Francisco Chang' and city='Mexico.D.F'");

							while(rs.next())
							{
								//rs.getString(1);
								vec.add(rs.getString(1));
								vec1.add(rs.getString(2));
								vec2.add(rs.getString(3));
								vec3.add(rs.getString(4));
							}

							t=vec.equals(v);
							t1=vec1.equals(v1);
							t2=vec2.equals(v2);
							t3=vec3.equals(v3);

							String s1="true";
							if( (s1.equals(t.toString())) && (s1.equals(t1.toString())) && (s1.equals(t2.toString())) && (s1.equals(t3.toString())) )
							{					
								result=true;
								System.out.println(" Completely Matched "+result);					
							}

							System.out.println("Vector"+t);
							System.out.println("Vector 1 "+t1);
							System.out.println("Vector 2 "+t2);
							System.out.println("Vector 3 "+t3);
							
						}
						catch (Exception e)
						{
							e.printStackTrace();
						}
						return result;

					}


	 public Boolean form5(Vector v,Vector v1,Vector v2,Vector v3)
		{
			System.out.println("Entered into the FORM1");
			Boolean result=false;
			Boolean t=false;
			Boolean t1=false;
			Boolean t2=false;
			Boolean t3=false;
			try
				{				
					Connection conn=database.getConnect();
					Statement st=conn.createStatement();
					ResultSet rs=st.executeQuery("select * from customerdetails order by contactname");

					while(rs.next())
					{
						//rs.getString(1);
						vec.add(rs.getString(1));
						vec1.add(rs.getString(2));
						vec2.add(rs.getString(3));
						vec3.add(rs.getString(4));
					}

					t=vec.equals(v);
					t1=vec1.equals(v1);
					t2=vec2.equals(v2);
					t3=vec3.equals(v3);

					String s1="true";
					if( (s1.equals(t.toString())) && (s1.equals(t1.toString())) && (s1.equals(t2.toString())) && (s1.equals(t3.toString())) )
					{					
						result=true;
						System.out.println(" Completely Matched "+result);					
					}

					System.out.println("Vector"+t);
					System.out.println("Vector 1 "+t1);
					System.out.println("Vector 2 "+t2);
					System.out.println("Vector 3 "+t3);
					
				}
				catch (Exception e)
				{
					e.printStackTrace();
				}
				return result;

			}

	public Boolean form6(Vector v,Vector v1,Vector v2,Vector v3)
			{
				System.out.println("Entered into the FORM1");
				Boolean result=false;
				Boolean t=false;
				Boolean t1=false;
				Boolean t2=false;
				Boolean t3=false;
				try
					{				
						Connection conn=database.getConnect();
						Statement st=conn.createStatement();
						ResultSet rs=st.executeQuery("select * from customerdetails where contactname In('Maria Anders','Roland Mendel')");

						while(rs.next())
						{							
							vec.add(rs.getString(1));
							vec1.add(rs.getString(2));
							vec2.add(rs.getString(3));
							vec3.add(rs.getString(4));
						}

						t=vec.equals(v);
						t1=vec1.equals(v1);
						t2=vec2.equals(v2);
						t3=vec3.equals(v3);

						String s1="true";
						if( (s1.equals(t.toString())) && (s1.equals(t1.toString())) && (s1.equals(t2.toString())) && (s1.equals(t3.toString())) )
						{					
							result=true;
							System.out.println(" Completely Matched "+result);					
						}

						System.out.println("Vector"+t);
						System.out.println("Vector 1 "+t1);
						System.out.println("Vector 2 "+t2);
						System.out.println("Vector 3 "+t3);
						
					}
					catch (Exception e)
					{
						e.printStackTrace();
					}
					return result;

				}



  }