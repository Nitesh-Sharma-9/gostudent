package db;

import java.io.*;
import java.sql.*;
public class Admin {
    public static Connection connect() throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/nitesh","root","");   
    }
    public static String addUser(String rid,String nm,String fnm,String mnm,String gnd,double m10,double m12,double ugp,double pgp,String qug,String qpg,String st,String ct,String cl,String dob,String mob,String lndln,String mid,String cdate,String taddr,String paddr)
    {
        try{
        CallableStatement cs= connect().prepareCall("{call addUser(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
        cs.setString(1, rid);
        cs.setString(2, nm);
        cs.setString(3, fnm);
        cs.setString(4, mnm);
        cs.setString(5, gnd);  
        cs.setDouble(6, m10);
        cs.setDouble(7, m12);
        cs.setDouble(8, ugp);
        cs.setDouble(9, pgp);
        cs.setString(10, qug);
        cs.setString(11, qpg);  
        cs.setString(12, st);  
        cs.setString(13, ct);  
        cs.setString(14, cl);  
        cs.setString(15, dob);  
        cs.setString(16, mob);
        cs.setString(17, lndln);
        cs.setString(18, mid);
        cs.setString(19, cdate);
        cs.setString(20,taddr );
        cs.setString(21, paddr);
        cs.registerOutParameter(22,Types.VARCHAR);
        cs.executeQuery();
        return cs.getString(22);
        }
        catch(Exception e)
        {
            return e.getMessage();
        }
    }
    public static String addPwd(String rid,String ps,int scode,String ml,String mob)
    {
        try{
            CallableStatement cs=connect().prepareCall("{call addPwd(?,?,?,?,?,?)}");
            cs.setString(1, rid);
            cs.setString(2, ps);
            cs.setInt(3, scode);
            cs.setString(4, ml);
            cs.setString(5, mob);
            cs.registerOutParameter(6,Types.VARCHAR);
            cs.executeQuery();
            return cs.getString(6);
        }
        catch(Exception e)
        {
             return e.getMessage();
        }
    }
    public static  String addSec(String rid,String que,String an)
    {
        try{
            CallableStatement cs=connect().prepareCall("{call addSec(?,?,?,?)}");
            cs.setString(1, rid);
            cs.setString(2, que);
            cs.setString(3, an);
            cs.registerOutParameter(4,Types.VARCHAR);
            cs.executeQuery();
            return cs.getString(4);
        }
        catch(Exception e)
        {
           return e.getMessage();
      }
    }
    public static String addSub(String sid,String sub)
    {
        try{
        CallableStatement cs= connect().prepareCall("{call addSub(?,?)}");
        cs.setString(1,sid);
        cs.setString(2,sub);
        cs.registerOutParameter(3,Types.VARCHAR);
        cs.executeQuery();
        return cs.getString(3);
        }
        catch(Exception e)
        {
            return e.getMessage();
        }
    }
    public static String addPerson(int rid,String ph,String sn,String tm)
    {
       try
       {
           CallableStatement cs=connect().prepareCall("{call addPerson(?,?,?,?)}");
           cs.setInt(1, rid);
           FileInputStream r=new FileInputStream(ph);
           cs.setBinaryStream(2, r);
           r=new FileInputStream(sn);
           cs.setBinaryStream(3, r);
           r=new FileInputStream(tm);
           cs.setBinaryStream(4, r);
           cs.executeQuery();
           cs.registerOutParameter(5,Types.VARCHAR);
           return cs.getString(5);
       }
      catch(Exception e)
      {
          return e.getMessage();
      }
    }
     public static String addCaptcha(String cp,String t)
    {
       try
       {
           CallableStatement cs=connect().prepareCall("{call addCaptcha(?,?)}");
           FileInputStream r=new FileInputStream(cp);
           cs.setBinaryStream(1, r);
           cs.setString(2, t);
           cs.executeQuery();
           cs.registerOutParameter(3,Types.VARCHAR);
           return cs.getString(3);
       }
      catch(Exception e)
      {
          return e.getMessage();
      }
    }
     public static String addSecQues(String que)
     {
         try{
             CallableStatement cs=connect().prepareCall("{call addSecQues(?)}");
             cs.setString(1, que);
             cs.executeQuery();
             cs.registerOutParameter(2,Types.VARCHAR);
             return cs.getString(2);
         }
         catch(Exception e)
         {
             return e.getMessage();
         }
                 
     }
     public static String verify(String rid,int scd)
     {
         try{
             CallableStatement cs=connect().prepareCall("{call verify(?,?,?)}");
             cs.setString(1, rid);
             cs.setInt(2, scd);
             cs.executeQuery();
             cs.registerOutParameter(3,Types.VARCHAR);
             return cs.getString(3);
         }
         catch(Exception e)
         {
             return e.getMessage();
         }
     }
     
     public static String setMode(String rid)
     {
         try
         {
             CallableStatement cs=connect().prepareCall("{call setMode(?)}");
             cs.setString(1,rid);
             cs.execute();
             return "U Can Login now..."         ;
         }
         catch(Exception e)
         {
            return e.getMessage();
         }
     }
     public static String checkId(int rid,String pass)
     {
         try
         {
             CallableStatement cs=connect().prepareCall("{call setMode(?)}");
             cs.setInt(1,rid);
             cs.setString(2,pass);
             cs.execute();
             cs.registerOutParameter(3, Types.VARCHAR);
             return cs.getString(3);
         }
         catch(Exception e)
         {
             return e.getMessage();
         }
     }
      public static String forget(int rid,String ml)
  {
    try
    {
       CallableStatement cs = connect().prepareCall("{call forget(?,?)}");
       cs.setInt(1, rid);
       cs.setString(2,ml );
       cs.registerOutParameter(3,Types.VARCHAR);
       cs.execute();
       return cs.getString(3);
    }catch(Exception ex) { return ex.toString();}
  }
      public static String getRegId()
      {
          try
          {
               Connection cn=connect();
               long n=0;
               long m=910920001;
               Statement st=cn.createStatement();
               ResultSet rs=st.executeQuery("select count(regid) from tblRegis");
                 if(rs.next())
                   n=(long)rs.getInt(1);
                 if(n==0)
                     return "NS"+m;
                 else{
      
                     m=m+n;
                     return "NS"+m;
                 }
          }catch(Exception ex) { return ex.getMessage();}
      }
      public static ResultSet getSec() throws Exception
     {
         return connect().prepareCall("{call getSec()}").executeQuery();
     }
      public static ResultSet getState() throws Exception
     {
         return connect().prepareCall("{call getState()}").executeQuery();
     }
      public static ResultSet getCollege() throws Exception
     {
         return connect().prepareCall("{call getCollege()}").executeQuery();
     }
      public static ResultSet getAllCity(String st) throws Exception
     {
              CallableStatement cs=connect().prepareCall("{call getAllCity(?)}");
              cs.setString(1,st);
              return cs.executeQuery();
     }
    
}
