<%@taglib uri="/WEB-INF/MyTld.tld" prefix="s"%> 
<html>
    <head>
        <title>Agile Softech</title>
        <%@page import="java.sql.*" %>
        
          <script src="Ajax.js">
         /*  function view(st)
           {
               document.getElementById("cty").innerHTML="ur selected state is - "+st.value;  
           } */  
        </script>
<style>

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
          margin-top: 100px;
          font-family: Helvetica, Verdana, sans-serif;
      }
      .bgc
      {
          //background-color: #35adef;
         // background-image: url("images/b4.jpg");
      }
      .hdr
      {
          width: 1400px;
          height: 100px;
          //background-color: #ea1212;
           
      }
      
     </style>
      <%@ include file="menu.html" %> 
    </head>
  <body class="bgc" >
  
      <form action="RegisAct"  method="post" class ="container" style="margin-top: 100px; font-size: 10px" >
        <pre><h3>
        <%
            String id=db.Admin.getRegId();
        %>
        Registration Id:<input  type="text" name="regid" size="15" value="<%=id%>" readonly/>
        <%
            String s[]={"MM","jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"};
        %>
        Candidate Name:<input  type="text" name="name" size="40"  />
        
        Father Name:   <input type="text" name="fname" size="40"/>
        
        Mother Name:    <input type="text" name="mname" size="40" />
        
                       <input type=radio name=mode value="Male" checked>Male.  <input type=radio name=mode value="Female">Female.
                         
        Marks in 10th: <input type="text" name="m10" size="6" placeholder="%" />            Marks in 12th:   <input type="text" name="m12" size="6" placeholder="%" />
        
        Marks in ug:   <input type="text" name="ug" size="6" placeholder="%" />            Marks in pg:     <input type="text" name="pg" size="6" placeholder="%" />
        
        Qualification:   
                       Under Graduate:
                       <input type="checkbox" name="b1" value="ON1" checked="checked" />BTech
                       <input type="checkbox" name="b2" value="ON2"/>BE
                       <input type="checkbox" name="b3" value="ON3" checked="checked" />BCA
                       <input type="checkbox" name="b4" value="ON4"/>BScIT
                       <input type="checkbox" name="b5" value="ON5" />BBA
                       Post Graduate:
                       <input type="checkbox" name="p1" value="ON6" checked="checked" />MCA
                       <input type="checkbox" name="p2" value="ON7" />ME
                       <input type="checkbox" name="p3" value="ON8" checked="checked"/>MTech
                       <input type="checkbox" name="p4" value="ON9"/>MScIT
                       <input type="checkbox" name="p5" value="ON0"/>MBA
        
        State:         <select name="st" onchange="view(this)">
                         <s:state/></select><div id="cty">      
        City:          <select name="ct" disabled="true">
                         <option value="">Select City</option> </select></div>
        College:       <select name="cl">
                         <s:colleges/></select>
  
        Date Of Birth: <select name="dd"><option value=''>DD</option><%for(int i=1;i<=31;i++)out.println("<option>"+i+"</option>");%></select><select name="mm"><%for(int i=0;i<=12;i++)out.println("<option>"+s[i]+"</option>");%></select><select name="yy"><option value="yy">YYYY</option><%for(int i=1975;i<=2000;i++)out.println("<option>"+i+"</option>");%></select>
        
        Mobile no.:    <input type="text" name="mob" size="20" maxlength="10"/>
        
        Land Line:     <input type="text" name="ll" size="20"  />
  
        Mail Id:       <input type="text" name="ml" size="40"  />
        
        Date:          <input type="date" name="dt" />
        
        Temp. Address:  
                       <textarea name="taddr" cols="40" rows="4"></textarea>
        Perm. Address:  
                       <textarea name="paddr" cols="40" rows="4"></textarea>
        
        Security Ques: <select name="ques"><s:SecQues/> </select>
        
        Answer:
                       <textarea name="ans" cols="30" rows="3"></textarea>
             
        New Password:    <input type="password" name="nps" />
        
        Conform Password:<input type="password" name="cps" />
        
        
                   
                              
           
        <center>
        <input  type="submit" value="   N e x t   " />
        </center>
    
  </h3></pre> 
      </form>
  </body>
</html>