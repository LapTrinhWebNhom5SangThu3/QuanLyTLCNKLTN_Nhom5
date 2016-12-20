<%@page import="java.sql.*"%>

<%

String id=request.getParameter("id");
String pass=request.getParameter("pass");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydataweb","root", "Lehaidang2411");
Statement st=null;
st=conn.createStatement();




String sqlEDIT="Update taikhoan set pass='"+pass+"'   where id='"+id+"'";
java.sql.PreparedStatement ps=conn.prepareStatement(sqlEDIT);
ps.executeUpdate();
   int i=ps.executeUpdate();
if(i>0)
        {
            out.print("project added into database");
            response.sendRedirect("TrangChu-AD.jsp");
        }
}
catch(Exception e){
System.out.println(e);
    }
%>