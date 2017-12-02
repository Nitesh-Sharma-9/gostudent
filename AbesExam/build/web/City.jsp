        
        City:          <select name="ct">
        <%
          String n,st = request.getParameter("s");
          java.sql.ResultSet rs = db.Admin.getAllCity(st);
          out.println("<option value=''>Select City</option>");             
          while(rs.next())
          {
             n = rs.getString(1);
             out.println("<option value='"+n+"'>"+n+"</option>");             
          }
          
        %>
      </select>