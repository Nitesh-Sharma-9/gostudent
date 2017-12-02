<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Agile Softech</title>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.0.0.min.js"></script>
    <script src="bootstrap.min.js"></script>
	 <style type="text/css">
  #login
  {
      margin-left:5px;
	  margin-top:50px;
	  margin-right:5px;
  }
  #logo
  {
      margin-left:90px;
	  margin-top:10px;
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
	  margin-top:10px;
	  margin-right:50px;
  }
  #sn
  {
          margin-left:220px;
          margin-top:-10px;
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
    <form action="ForgetAct" method="post">
     <img id="logo" src="images\sl.jpeg" width="150" height="120" />
	
    <div id="login" class="from-group" >
        <label for="focusedInput" style="color:#0067CE">Login Id</label>
        <input class="form-control" id="focusedInput" type="text" name="rid" placeholder="Enter Login Id" required /><br />
      <label for="inputName" class="control-label" style="color:#0067CE">Email Id</label>
      <input type="text" name="ml" class="form-control" id="inputName" data-minlength="8" style="size:20px " placeholder="Enter Mail Id" required><br />
	   <input type="submit" value="Forgot Password" class="btn-primary" /> <a href="Login.jsp"><img id="sn" src="images\loginn.jpg" width="100" height="80" /></a>  
    </div>
         <a target="_parent" href="Regis.jsp"><img id="reg" src="images\reg1.jpg" width="300" height="120" /></a>
    </form>
</body>
</html>
