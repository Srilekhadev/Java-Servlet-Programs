package CustomTag;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;
public class firstTag extends TagSupport
{
  public int doStartTag() throws JspException
  {
    try
     {
       JspWriter out=pageContext.getOut();
       out.print("Hello!!! this is my first custom tag");
     }
     catch(Exception e)
     {
	throw new JspException(e.getMessage() );
     }
     return EVAL_PAGE;
   }
}
		