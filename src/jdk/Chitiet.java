package jdk;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/Chitiet"})
public class Chitiet extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 response.setContentType("text/html;charset=UTF-8");
         response.setCharacterEncoding("UTF-8");
         request.setCharacterEncoding("UTF-8");
    
        PrintWriter out = response.getWriter();
        
        Connection conn = null;
       
 
        Statement st;
        try {
	        	 Class.forName("com.mysql.jdbc.Driver");
	        	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydataweb",
	        	            "root", "Lehaidang2411");
            System.out.println("Connected!");
            String pid = request.getParameter("id");
       	 ArrayList al = null;
            ArrayList pid_list = new ArrayList();
           
            String query = "select *  FROM tlcn  where MaDT='" + pid + "' ";
 
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
 
            while (rs.next()) {
                al = new ArrayList();
             
                al.add(rs.getString(1));
                al.add(rs.getString(2));
                al.add(rs.getString(3));
                al.add(rs.getString(4));
                al.add(rs.getString(5));
                al.add(rs.getString(6));
                al.add(rs.getString(7));
                al.add(rs.getString(8));
                al.add(rs.getString(9));
                al.add(rs.getString(10));
                al.add(rs.getString(11));
                al.add(rs.getString(12));
                System.out.println("al :: " + al);
                pid_list.add(al);
            }
 
            request.setAttribute("piList", pid_list);
            RequestDispatcher view = request.getRequestDispatcher("/ChiTietLuanVan.jsp");
            view.forward(request, response);
            conn.close();
            System.out.println("Disconnected!");
           
        }
         
         catch (Exception e) {
			response.setContentType("text/html");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('vui lòng kiểm tra lại');");
			out.println("</script>");
	      }
    }
 
    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
