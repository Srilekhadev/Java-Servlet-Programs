package CustomTag1;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
public class firstTag1 extends TagSupport
{
  private int n;
  public int getN()
  {
    return n;
  }

public void setN(int  i)
{
  n=i;
}
  public int doStartTag() throws JspException
  {
    try
     {
       JspWriter out=pageContext.getOut();
       int num=n*n;
       out.print("square value of "+n+" is " +num);
     }
     catch(Exception e)
     {
	throw new JspException(e.getMessage() );
     }
     return EVAL_PAGE;
   }
}
		