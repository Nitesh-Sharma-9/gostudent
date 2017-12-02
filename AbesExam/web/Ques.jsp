 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Softworkers</title>

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
          width:900px;
          height:900px;
          border-radius: 5px;
          background-color: #ffffff;
          background: #ffffff;
          margin-left:200px;
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
<%! int n=1;%>
<body>
    
    <form action="QuesAction" method="post">
     <img id="logo" src="images\logo2.png" width="150" height="120" />
	 <!--<h3 id="e" >NS-Softech</h3>-->
    <div id="login"  >
        <pre><h3>
             <label style="color:#0067CE">QNo:<%=n++%></label><br></br>
             Question:
             <textarea name="ques" cols="80" rows="3" ></textarea>
             Question Description:
             <textarea name="quesd" cols="80" rows="20" ></textarea>
             
             Option: A                                   Option: B
             <textarea name="optA" cols="30" rows="2"></textarea>               <textarea name="optB" cols="30" rows="2"></textarea>
 
             Option: C                                   Option: D
             <textarea name="optC" cols="30" rows="2"></textarea>               <textarea name="optD" cols="30" rows="2"></textarea>

             Option: E
             <textarea name="optE" cols="30" rows="2"></textarea>

             Answer Option: <input type="text" name="optans" size="10" />
             
                     
             <center><input type="submit" value="S a v e" class="btn-primary" /></center>
        </h3></pre>
    </div>
    </form>
</body>
</html>
