import db.Admin;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Login extends HttpServlet{

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         int rid=Integer.parseInt(req.getParameter("rid"));
         String pass=req.getParameter("ps");
         String msg=Admin.checkId(rid, pass);
    }
      
}
