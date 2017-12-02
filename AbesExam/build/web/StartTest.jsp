<html lang="en">
<head>
    
    <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery-3.0.0.min.js"></script>
  <script src="bootstrap.min.js"></script>
  <script>
      function myFunction(elmnt, clr) {
    elmnt.style.color =clr;
}
   function save()
   {
            document.forms[0].action="ResultAction";
            document.forms[0].submit();
   }
  </script>
  <style type="text/css">
    
  #login
  {
      margin-left:0px;
	  margin-top:100px;
	  margin-right:5px;
  }
  .main
  {
          border:2px solid #cccccc;
          width:1000px;
          height: 6300px;
          border-radius: 5px;
          //background-image: url("images/fr.gif");
          background-color: #ffffff;
          margin-left: 170px;
          margin-top: 50px;

  }
  .c
  {
      margin-left: 20px;
      margin-top: 1px;
      border-radius: 1px;
      width: 600px;
  }
  .tx
  {
       margin-left: 10px;
       font-size: 14px; 
       color: #000000;
  }
  #tx1
  {
       margin-left: 10px;
       font-size: 14px; 
       color: #000000;
  }
 
  </style>
  <%@page import="java.sql.*"%>
</head>
<body bgcolor="#FFFFFF" class="main">
    <form action="ResultAction" method="post">
<nav id="login" class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-default">
      <b class="navbar-brand " ></b>    
	  </div>
    <ul class="nav navbar-nav">
      <li><a  class="navbar-brand" href="#">Home</a></li>
      <li><a href="#">  Aptitude  </a></li>
      <li><a href="#">  Logical Reasoning</a></li>
      <li><a href="#">  Verbal ability </a></li>
      <li><a href="#">  Programming</a></li>
     </ul>
  </div>
</nav>
    <h4 style="margin-left: 10px; color: #f10707"> Welcome to Softworkers.com !</h4>  
    <hr><h4 style="margin-left: 10px; color: #999999">Here, you can read programming questions and answers for your interview and placement preparation.</h4><hr>
    <p style="margin-left: 10px; color: #07d114">C Programing Test</p> <p><%@include file="Timer.jsp" %></p>
    <br>
    
    <%!int n=1;%>
    <%
        
        try{
          ResultSet rs=db.Admin.getCQues();
          while(rs.next())
         {
             out.println("<p class=tx><b style= color:#5e5efd>"+rs.getInt(1)+". </b>"+rs.getString(2)+"</p>");
             out.println("<div class=c>");
             out.println("<pre><h3><font style=font-family:verdana;font-size:15px ><p>"+rs.getString(3)+"</p><font></h3></pre>");
             out.println("</div>");
             out.println("<input style=margin-left:20px type=radio name=var"+n+"  value='A'/><span id=tx1><b style= color:#5e5efd>A. </b>"+rs.getString(4)+"</span><br>");
             out.println("<input style=margin-left:20px type=radio name=var"+n+"  value='B'/><span id=tx1><b style= color:#5e5efd>B. </b>"+rs.getString(5)+"</span><br>");
             if(!(rs.getString(6).equals("")))
             out.println("<input style=margin-left:20px type=radio name=var"+n+"  value='C'/><span id=tx1><b style= color:#5e5efd>C. </b>"+rs.getString(6)+"</span><br>");
             if(!(rs.getString(7).equals("")))
             out.println("<input style=margin-left:20px type=radio name=var"+n+"  value='D'/><span id=tx1><b style= color:#5e5efd>D. </b>"+rs.getString(7)+"</span><br>");
              if(!(rs.getString(8).equals("")))
             out.println("<input style=margin-left:20px type=radio name=var"+n+"  value='E'/><span id=tx1><b style= color:#5e5efd>E. </b>"+rs.getString(7)+"</span><br>");
             out.println("<br>");
             n++;
        }
    }catch(Exception e)
     {
      out.println(e.getMessage());
     }
    %>
    <br><br>
    <center><input type="submit" value="S u b m i t" class="btn-primary"/></center>
</form> 
</body>
</html>
