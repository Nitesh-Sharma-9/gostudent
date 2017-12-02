package pac;
import java.sql.*;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
public class SecurityQues extends TagSupport
{
  @Override
  public int doStartTag() throws JspException {
    try
    {
       JspWriter out = pageContext.getOut();
       
       out.println("<option>Select Security Question");
       out.println("</option>");
       
       ResultSet rs=db.Admin.getSec();
       while(rs.next())
       {
          out.println("<option>"+rs.getString(1)+"</option>");        
       }
    }catch(Exception ex) { }
    return 0;
  }
     
}
