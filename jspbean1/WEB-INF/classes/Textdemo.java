package textdemo;
public class Textdemo
{
	public static String msg;
	public Textdemo()
	{
	  msg="Hello World";
	}
	public String getMsg()
	{
	  return msg;
	}
	public void setMsg(String s)
	{
	  msg=s;
	}
}

// Compile this program 
// classes> javac -d . Textdemo.java  which creates Textdemo folder