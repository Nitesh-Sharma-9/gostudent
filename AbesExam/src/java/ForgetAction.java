
import db.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.security.Security;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*; 

public class ForgetAction extends HttpServlet
{
  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     int rid = Integer.parseInt(req.getParameter("rid"));
     String ml=req.getParameter("ml");
     String msg = Admin.forget(rid,ml);
     if(msg.startsWith("Sorry"))
     {
        req.setAttribute("msg", msg);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
     }
     else
     {
       PrintWriter out = resp.getWriter();
       out.println("<body bgcolor=lightyellow><h2><tt>");
       try
       {
         String ar[] = msg.split(":");
         String subject="Password Recovery Mail.";
         String emailMsgTxt="Hello, "+rid+"<br><p> Welcome to My Web site. This mail is generated as per your request for password recovery. <br>Your Password is <b>"+ ar[0]+"<b>.</p> ";
         String SMTP_HOST_NAME = "smtp.gmail.com";
         String SMTP_PORT = "465";
         final String EMAIL_FROM_ADDRESS ="shivani.agile";
         final String SENDER_EMAIL_PASSWORD="mynameisdon";
         String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
         String[] EMAIL_TO_ADDRESS = {ar[1],"niteshsharma871@gmail.com"}; 
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
       out.println("ur password successfully send to ur register mail id. ");
      } catch(Exception e){
                 out.println(e.toString());} 
     }
  }  
}