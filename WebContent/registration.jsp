<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String id = request.getParameter("id");    
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String level = request.getParameter("level");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydataweb",
            "root", "Lehaidang2411");
    Statement st = con.createStatement();
    ResultSet rs;
     int i = st.executeUpdate("insert into taikhoan (id,uname,pass,level) values ('" +id +"','"+user+"','" + pwd + "','" + level+"')");
    if (i > 0) {
        session.setAttribute("userid", user);
        out.print("Tạo tài khoản thành công!" +"<a href='TrangChu-AD.jsp'>Trở lại</a>");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("TrangChu-AD.jsp");
    }
%>