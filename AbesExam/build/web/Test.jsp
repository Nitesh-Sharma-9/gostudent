<!DOCTYPE html>
<html lang="en">
<head>
<title>Agile Softech</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery-3.0.0.min.js"></script>
  <script src="bootstrap.min.js"></script>
  <script>
      function myFunction(elmnt, clr) {
    elmnt.style.color =clr;
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
          width:1200px;
          height: 1000px;
          border-radius: 5px;
          //background-image: url("images/fr.gif");
          background-color: #ffffff;
          margin-left: 70px;
          margin-top: 50px;

  }
   #c1
  {
       margin-top: 1px;
       width:598px;
       border:3px solid #cccccc;
       background-color: #cccccc;
  }
 
 #ins
 {
     margin-left: 80px;
     font-size: 14px;
     font-style: normal;
     color: #000000;
 }
 .result
  {
          border:2px solid #cccccc;
          width:600px;
          height: 130px;
          background-color: #ffffff;
          margin-left: 50px;
          margin-top: 20px; 
  }
 
 
  </style>
</head>
<body bgcolor="#FFFFFF" class="main">
    <form action="StartTest.jsp">

<nav id="login" class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-default">
      <b class="navbar-brand " ></b>    
	  </div>
    <ul class="nav navbar-nav">
      <li><a  class="navbar-brand" href="Home.jsp">Home</a></li>
      <li><a href="#">  Aptitude  </a></li>
      <li><a href="#">  Logical Reasoning</a></li>
      <li><a href="#">  Verbal ability </a></li>
      <li><a href="#">  Programming</a></li>
     </ul>
  </div>
</nav>
    <h4 style="margin-left: 10px; color: #f10707"> Welcome to Softworkers.com !</h4>  
    <hr><h4 style="margin-left: 10px; color: #999999">Here, you can read programming questions and answers for your interview and placement preparation.</h4><hr>
    <br>
        <%
        String t = request.getParameter("t");
        
         if(t!=null) // if parameter exist hai to
         {
              out.println("<div class=result>");
              out.println("<div  id=c1><center><font style=color:#f10707>Marks "+t+"/20</font><center>");
              out.println("</div>");
              out.print("<snap style=color:#999999>&nbsp Total number of questions      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : 20</snap><br>");
              out.print("<snap style=color:#999999>&nbsp Number of answered questions   &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : "+t+"</snap><br>");
              out.print("<snap style=color:#999999>&nbsp Number of unanswered questions &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : "+(20-(Integer.parseInt(t)))+"</snap>");
              out.println("</div><br>");
              
         }
     
        %>   
<u style="margin-left: 50px; color: #07d114">Instruction  </u>
<div id="ins">
     <br>
     <ul>
         <li>Total number of questions : 20.</li>
         <li>Time alloted : 30 minutes.</li>
         <li>Each question carry 1 mark, no negative marks.</li>
         <li>DO NOT refresh the page.</li>
         <li>All the best :-).</li>
     </ul>
     <br>
     <input style="margin-left: 120px; margin-top: 10px;" type="submit" value="Start Test.." class="btn-xs"/>
 </div>
    </form>
</body>
</html>
