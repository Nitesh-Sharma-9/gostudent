package pac;
import java.sql.*;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
public class MyCollege extends TagSupport
{
  @Override
  public int doStartTag() throws JspException {
    try
    {
       JspWriter out = pageContext.getOut();
       
       out.println("<option>Select College");
       out.println("</option>");
       
       ResultSet rs=db.Admin.getCollege();
       while(rs.next())
       {
          out.println("<option>"+rs.getString(1)+"</option>");        
       }
    }catch(Exception ex) { }
    return 0;
  }
     
}
