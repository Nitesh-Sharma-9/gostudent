 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Agile Softech</title>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.0.0.min.js"></script>
    <script src="bootstrap.min.js"></script>
	 <style type="text/css">
             .frm
      {
          border:1px solid #f4f4f4 ;
          width:1000px;
          height:1500px;
          border-radius: 5px;
          background-color: #ffffff;
          background: #ffffff;
          //background-image: url("images/fr.gif");
          margin-left: 180px;
          margin-top: 200px;
          font-family: Helvetica, Verdana, sans-serif;
      }
  #login
  {
          border:1px solid #f4f4f4 ;
          width:600px;
          height:500px;
          border-radius: 5px;
          background-color: #ffffff;
          background: #ffffff;
          margin-left:400px;
	  margin-top:10px;
  }
  #logo
  {
      margin-left:600px;
	  margin-top:150px;
	  
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
  #forget
  {
          margin-left:220px;
	  margin-top:-40px;
	  margin-right:5px;  
  }
  </style>
</head>
<%  
    String s="";
    String rid=(String)session.getAttribute("regid");
       if(rid!=null)
       {
           s=rid;
       }
       String  msg=(String)request.getAttribute("msg");
       if(msg!=null)
           out.println(msg);
 %>
<body>
    
    <form action="VerifyAct" method="post">
     <img id="logo" src="images\sl.jpeg" width="150" height="120" />
	 <!--<h3 id="e" >NS-Softech</h3>-->
    <div id="login" class="from-group" >
        <label for="focusedInput" style="color:#0067CE">Your Login Id is-<%=s%></label><br>
            <label for="focusedInput" style="color:#0067CE">Please Enter Security Code from Your Mail for verification.</label><br>
                <label for="focusedInput" style="color:#0067CE">Login Id</label><br>
                    <input class="col-xs-8" id="focusedInput" name="rid" type="text"  value="<%=s%>" readonly /><br></br>
                    <label for="inputName" class="control-label" style="color:#0067CE">Security Code</label><br></br>
                            <input type="password" name="scode" class="col-xs-8" id="inputName" data-minlength="8" style="size:20px " placeholder="Enter Security Code" required><br></br>
	   <input type="submit" value="Verify" class="btn-primary" />  
    </div>
    </form>
</body>
</html>
