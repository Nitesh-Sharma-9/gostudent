<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>W&P</title>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.0.0.min.js"></script>
    <script src="bootstrap.min.js"></script>
	 <style type="text/css">
  #login
  {
          margin-left:0px;
	  margin-top:50px;
	  margin-right:5px;
  }
  #logo
  {
      margin-left:100px;
	  margin-top:20px;
	  margin-right:50px;
  }
  #e
  {
      margin-left:120px;
	  margin-top:1px;
	  margin-right:50px;
  }
  #reg
  {
         margin-left:10px;
	  margin-top:0px;
	  margin-right:50px;
  }
   #n
  {
         margin-left:220px;
	  margin-top:0px;
	  margin-right:50px;
  }
  #forget
  {
          margin-left:220px;
	  margin-top:-40px;
	  margin-right:5px;  
  }
  </style>
</head>

<body>
    <form action="Login" method="post" target="_parent">
     <img id="logo" src="images\sl.jpg" width="130" height="80" />
	 <!--<h3 id="e" >NS-Softech</h3>-->
    <div id="login" class="from-group" >
        <label for="focusedInput" style="color:#6666ff">Login Id</label>
      <input class="form-control" id="focusedInput" name="rid" type="text"  placeholder="Enter Login Id" required /><br />
      <label for="inputName" class="control-label" style="color:#6666ff">Password</label>
      <input type="password" class="form-control" name="ps" id="inputName" data-minlength="8" style="size:20px " placeholder="Enter Password" required><br />
           <input type="submit" value="Sign In" class="btn-primary" />   <a   href="Forget.jsp"><img id="forget" src="images\forget.jpg" width="100" height="70" /></a>
    </div>
         <a target="_parent" href="Regis.jsp"><img id="reg" src="images\reg1.jpg" width="300" height="120" /></a>
    </form>
</body>
</html>
