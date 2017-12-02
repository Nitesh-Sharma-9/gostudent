import db.Admin;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
public class VerifyAct extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String rid=req.getParameter("rid");
        int scd=Integer.parseInt(req.getParameter("scode"));
        String msg=Admin.verify(rid,scd);
        if(msg.startsWith("Sorry"))
     {
        req.setAttribute("msg", msg);
        req.getRequestDispatcher("Verify.jsp").forward(req, resp);
     }
     else
     {
        String str=Admin.setMode(rid);
        resp.sendRedirect("index.jsp");
     }
    }
     
}
