
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String level = request.getParameter("level");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydataweb",
            "root", "Lehaidang2411");
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs = st.executeQuery("select * from taikhoan where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) 
    {
    	if(rs.getString(4).equals("1") )
    	{ 
    		response.sendRedirect("ThongBao-SV.jsp");
    	} 
    	else if (rs.getString(4).equals("2") )
    	{ 
    		response.sendRedirect("ThongBao-GV.jsp");

    	} 
    	else
    	{
    		response.sendRedirect("TrangChu-AD.jsp");
    	}
  
    } else {
        out.println("Invalid password <a href='TrangChu.jsp'>try again</a>");
    }
%>
