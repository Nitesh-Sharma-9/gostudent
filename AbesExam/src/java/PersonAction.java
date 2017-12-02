import db.Admin;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
public class PersonAction extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int rid=Integer.parseInt(req.getParameter("regid"));
        FileInputStream r=new FileInputStream(req.getParameter("ph"));
        String pht=r.toString();
         r=new FileInputStream(req.getParameter("sn"));
        String sgn=r.toString();
        r=new FileInputStream(req.getParameter("tm"));
        String thm=r.toString();
        String msg=Admin.addPerson(rid, pht, sgn, thm);
        HttpSession ses=req.getSession();
        ses.setAttribute("reg", rid);
        resp.sendRedirect("Verify.jsp");
    }
    
    
}
