<!DOCTYPE html>
<html lang="en">
<head>
<title>Agile Softech</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap-theme.min.css">
  <script src="jquery-3.1.0.min.js"></script>
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
          border:2px solid #999999;
          box-shadow: #999999;
          
          width:1200px;
          height: 1000px;
          border-radius: 5px;
          //background-image: url("images/fr.gif");
          background-color: #ffffff;
          margin-left: 150px;
          margin-top: 50px;

  }
  #c1
  {
       margin-top: 1px;
       width:398px;
       border:5px solid #cccccc;
       background-color: #cccccc;
  }
  #r1
  {
       margin-top: 1px;
       width:398px;
       border:5px solid #cccccc;
       background-color: #cccccc;
  }
  #i1
  {
       margin-top: 1px;
       width:398px;
       border:5px solid #cccccc;
       background-color: #cccccc;
  }
 #code
 {
     margin-left: 5px;
     width: 80px;
     height: 80px;
     margin-top: 5px;
 }
 #apt
 {
     margin-left: 5px;
     width: 80px;
     height: 80px;
     margin-top: 5px;
 }
 #res
 {
     margin-left: 5px;
     width: 80px;
     height: 80px;
     margin-top: 5px;
 }
 #itv
 {
     margin-left: 5px;
     width: 80px;
     height: 80px;
     margin-top: 5px;
 }
 #menu
 {
     margin-top: -60px;
     margin-left: 100px;
 }
  .c
  {
          border:2px solid #cccccc;
          width:400px;
          height: 250px;
          background-color: #ffffff;
          margin-left: 50px;
          margin-top: 50px; 
  }
  .r
  {
          border:2px solid #cccccc;
          width:400px;
          height: 250px;
          background-color: #ffffff;
          margin-left: 500px;
          margin-top: -550px; 
  }
  .i{
          border:2px solid #cccccc;
          width:400px;
          height: 250px;
          background-color: #ffffff;
          margin-left: 500px;
          margin-top: 50px;  
  }
  </style>
</head>
<body bgcolor="#FFFFFF" class="main">

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
    
    <div class="c">
        <div id="c1">
            <b style="margin-left:80px ;color:#f10707;">#Programming</b>
        </div>
        <div id="code" >
            <img src="images/code.jpg"/>
         </div>
        <div id="menu">
            <ul>
                <li style="color:#f10707 "><a style="color:#999999 " href="Test.jsp" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">C programming</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Data Structure</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">C++ Programming</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Java Programming</a></li>
            </ul>
        </div>
    </div>
    <div class="c">
        <div id="c1">
            <b style="margin-left:80px ;color:#f10707;">#Aptitude</b>
        </div>
        <div id="apt" >
            <img src="images/apt.jpg"/>
         </div>
        <div id="menu">
            <ul>
                <li style="color:#f10707 "><a style="color:#999999 " href="Test.jsp" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Arithmetic Aptitude</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Data Interpretation</a>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Skill Based</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Theory Based</a></li>
            </ul>
        </div>
    </div>
    <div class="r">
        <div id="r1">
            <b style="margin-left:80px ;color:#f10707;">#Verbal and Non Verbal</b>
        </div>
        <div id="res" >
            <img src="images/res.jpg"/>
         </div>
        <div id="menu">
            <ul>
                <li style="color:#f10707 "><a style="color:#999999 " href="Test.jsp" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Verbal Ability</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Logical Reasoning</a>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Verbal Reasoning</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Non Verbal Reasoning</a></li>
            </ul>
        </div>
    </div>
    </div>
     <div class="i">
        <div id="i1">
            <b style="margin-left:75px ;color:#f10707;">#Interview and Placement</b>
        </div>
        <div id="itv" >
            <img src="images/int.jpg"/>
         </div>
        <div id="menu">
            <ul>
                <li style="color:#f10707 "><a style="color:#999999 " href="Test.jsp" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Placement Papers</a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Group Discussion</a>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">HR Interview </a></li>
                <li style="color:#f10707"><a style="color:#999999 " href="#" onmouseover="myFunction(this,'#f10707')" onmouseout="myFunction(this,'#999999')">Technical Interview</a></li>
            </ul>
        </div>
    </div>
    </div>
</body>
</html>
