import db.Admin;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import java.io.IOException;
public class CaptchaAction extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         FileInputStream r=new FileInputStream(req.getParameter("ph"));
         String cp=r.toString();
         String cpt=req.getParameter("cpt");
         String msg=Admin.addCaptcha(cp, cpt);  
    }
      
}
