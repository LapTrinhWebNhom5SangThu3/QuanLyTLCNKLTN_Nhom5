<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
String id = request.getParameter("id");
int v=Integer.parseInt(id);
try{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydataweb",
            "root", "Lehaidang2411");
    Statement st = con.createStatement();
    String sql = "DELETE FROM tlcn WHERE  ID= '"+v+"'";
    st.executeUpdate(sql);
    response.sendRedirect("TimKiem-AD.jsp");
  }
catch(Exception e){
    System.out.print(e.getMessage());
}
%>