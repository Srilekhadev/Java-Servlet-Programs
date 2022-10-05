import java.awt.*;
import java.applet.*;
public class banner1 extends Applet implements Runnable
{
  String msg="HELLO WORLD";
  Thread t;
  boolean flag=false;
  public void init()
  {
     setBackground(Color.yellow);
     setForeground(Color.red);
   }
   public void start()
   {
      flag=true;
      t=new Thread(this,"banner");
      t.start();
   }
   public void paint(Graphics g)
   {
      g.drawString(msg,100,100);
   }
   public void stop()
   {
      flag=false;
      t=null;
    }

    public void run()
    {
      try
      {
         while(flag)
         {
            repaint();
            Thread.sleep(200);
            char ch=msg.charAt(0);
            msg=msg.substring(1,msg.length());
            msg=msg+ch;
          }
        }
        catch(InterruptedException e)
        {
           System.out.print("\nmsg="+msg);
         }
      }
}
         

//compile this program
//  C:\Tomcat 5.0\webapps\jspplugin> javac banner1.java
//  copy banner1.class and paste in PluginAction folder
