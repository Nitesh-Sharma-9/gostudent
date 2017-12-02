import db.Admin;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.Security;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
public class RegisAct extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String rid=req.getParameter("regid");
        String nm=req.getParameter("name");
        String fnm=req.getParameter("fname");
        String mnm=req.getParameter("mname");
        String gnd=req.getParameter("mode");
        
        double m10=Double.parseDouble(req.getParameter("m10"));
        double m12=Double.parseDouble(req.getParameter("m12"));
        double ug=Double.parseDouble(req.getParameter("ug"));
        double pg=Double.parseDouble(req.getParameter("pg")); 
        
      /*  String b1=req.getParameter("b1");
        String b2=req.getParameter("b2");
        String b3=req.getParameter("b3");
        String b4=req.getParameter("b4");
        String b5=req.getParameter("b5");*/
        String qug="BCA";
        /*if(b1.equals("ON1"))
            qug="Btech"+":";
        if(b2.equals("ON2"))
            qug="BE"+":";
        if(b3.equals("ON3"))
            qug="BCA"+":";
        if(b4.equals("ON4"))
            qug="BSCIT"+":";
        if(b5.equals("ON5"))
            qug="BBA"+":";*/
        
        /*String m1=req.getParameter("p1");
        String m2=req.getParameter("p2");
        String m3=req.getParameter("p3");
        String m4=req.getParameter("p4");
        String m5=req.getParameter("p5");*/
        String qpg="MCA";
        /*if(m1.equals("ON6"))
            qpg="Mtech"+":";
        if(m2.equals("ON7"))
            qpg="ME"+":";
        if(m3.equals("ON8"))
            qpg="MCA"+":";
        if(m4.equals("ON9"))
            qpg="MSCIT"+":";
        if(m5.equals("ON0"))
            qpg="MBA"+":";*/
        
        String st=req.getParameter("st");
        String ct=req.getParameter("ct");
        String cl=req.getParameter("cl");
        String dd=req.getParameter("dd");
        String mm=req.getParameter("mm");
        String yy=req.getParameter("yy");
        String dob=dd+"/"+mm+"/"+yy;
        String mob=req.getParameter("mob");
        String ll=req.getParameter("ll");
        String ml=req.getParameter("ml");
         
        String date=req.getParameter("dt");
        String taddr=req.getParameter("taddr");
        String paddr=req.getParameter("paadr");
        String sques=req.getParameter("ques");
        String sans=req.getParameter("ans");
         
        String npass=req.getParameter("nps");
        String cpass=req.getParameter("cps");
        if(!(npass.equals(cpass)))
        {
            req.setAttribute("cps", "");
            req.getRequestDispatcher("Regis.jsp").forward(req, resp);
        }
            
        int scode=(int)(Math.random()*1000000);
        try
       {
         
         String subject="Password Recovery Mail.";
         String emailMsgTxt="Hello, "+nm+"<br><p> Welcome to My Web site. This mail is generated as per your Security code for verification. <br>Your Security Code is <b>"+ scode+"<b>.</p> ";
         String SMTP_HOST_NAME = "smtp.gmail.com";
         String SMTP_PORT = "465";
         final String EMAIL_FROM_ADDRESS ="niteshsharma871";
         final String SENDER_EMAIL_PASSWORD="7739704218";
         String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
         String[] EMAIL_TO_ADDRESS = {ml,"nitesh.14mca1050@abes.ac.in"}; 
         Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
         boolean debug = true;
         Properties props = new Properties();
         props.put("mail.smtp.host", SMTP_HOST_NAME);
         props.put("mail.smtp.auth", "true");
         props.put("mail.debug", "true");
         props.put("mail.smtp.port", SMTP_PORT);
         props.put("mail.smtp.socketFactory.port", SMTP_PORT);
         props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
         props.put("mail.smtp.socketFactory.fallback", "false");
         Session ses = Session.getDefaultInstance(props,new javax.mail.Authenticator() {
             protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(EMAIL_FROM_ADDRESS, SENDER_EMAIL_PASSWORD);//Please Provide The Sender Address
               }
         });
         ses.setDebug(debug);
         Message msgg = new MimeMessage(ses); // Multipurpose Internet Mail Extension 
         InternetAddress addressFrom = new InternetAddress(EMAIL_FROM_ADDRESS);
         msgg.setFrom(addressFrom);
         InternetAddress[] ADDRESS_TO = new InternetAddress[EMAIL_TO_ADDRESS.length];
         for (int i = 0; i < EMAIL_TO_ADDRESS.length; i++) {
            ADDRESS_TO[i] = new InternetAddress(EMAIL_TO_ADDRESS[i]);
       }
       msgg.setRecipients(Message.RecipientType.TO, ADDRESS_TO);
      // Setting the Subject and Content Type
       msgg.setSubject(subject);
       msgg.setContent(emailMsgTxt, "text/html");
       Transport.send(msgg);
       //out.println("ur password successfully send to ur register mail id. ");
       String msg=db.Admin.addUser(rid, nm, fnm, mnm, gnd, m10, m12, ug, pg, qug, qpg, st, ct, cl, dob, mob, ll, ml, date, taddr, paddr);
       String msg2=db.Admin.addPwd(rid,cpass,scode, ml, mob);
       String msg3=db.Admin.addSec(rid, sques, sans);
        HttpSession ses1 = req.getSession(true);
        ses1.setAttribute("regid", rid);
        ses1.setAttribute("msg", msg);
        req.getRequestDispatcher("Verify.jsp").forward(req, resp);
       
      } catch(Exception e){
                 out.println(e.toString());} 
        
       
     }
    
    
    
     
    
        //req.setAttribute("msg", msg);
       // req.getRequestDispatcher("index.jsp").forward(req, resp);
        
}
    
