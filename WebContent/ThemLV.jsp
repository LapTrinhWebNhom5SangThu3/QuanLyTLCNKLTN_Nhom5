<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	String  maDT = request.getParameter("maDT");
	String  tenDT = request.getParameter("tenDT");
	String  mssv = request.getParameter("mssv");
	String  msgv = request.getParameter("msgv");
	String  maNganh = request.getParameter("maNganh");
	String  tlm = request.getParameter("tlm");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydataweb",
            "root", "Lehaidang2411");
    Statement st = con.createStatement();
    ResultSet rs;
     int i = st.executeUpdate("insert into detai (MaDT,TenDT,MSSV,MSGV,MaKhoa,TieuLuanMau) values (' " + maDT + " ',' " + tenDT + " ',' " + mssv + " ',' " + msgv+" ',' " + maNganh+" ',' " +tlm+" ')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        out.print("Thêm luận văn thành công!" +"<a href='TimKiem-AD.jsp'>Trở lại</a>");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("TimKiem-AD.jsp");
    }
%>