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

@WebServlet({"/SearchAD"})
public class SearchAD extends HttpServlet {
 
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
            String chon=request.getParameter("timtheo");
           
           if(chon.equals("mdt")){
            	 String pid = request.getParameter("noidungtim");
            	 ArrayList al = null;
                 ArrayList pid_list = new ArrayList();
                
                 String query = "select MaDT, TenDT, TenSV,MSSV,TenGVHD,Khoa FROM tlcn  where MaDT='" + pid + "' ";
      
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
                     System.out.println("al :: " + al);
                     pid_list.add(al);
                 }
      
                 request.setAttribute("piList", pid_list);
                 RequestDispatcher view = request.getRequestDispatcher("/TimKiem-AD.jsp");
                 view.forward(request, response);
                 conn.close();
                 System.out.println("Disconnected!");
            	}
         
         
         
           else if(chon.equals("mgv")){
        	   String pid = request.getParameter("noidungtim");
          	 ArrayList al = null;
               ArrayList pid_list = new ArrayList();
               String query = "select MaDT, TenDT, TenSV,MSSV,TenGVHD,Khoa FROM tlcn  where MaGV='"+ pid+"'";
    
               System.out.println("query " + query);
               st = conn.createStatement();
               ResultSet rs = st.executeQuery(query);
    
               while (rs.next()) {
                   al = new ArrayList();
    
//                   out.println(rs.getString(1));
//                   out.println(rs.getString(2));
//                   out.println(rs.getString(3));
//                   out.println(rs.getString(4));
                  
                   al.add(rs.getString(1));
                   al.add(rs.getString(2));
                   al.add(rs.getString(3));
                   al.add(rs.getString(4));
                   al.add(rs.getString(5));
                   al.add(rs.getString(6));
                   System.out.println("al :: " + al);
                   pid_list.add(al);
               }
    
               request.setAttribute("piList", pid_list);
               RequestDispatcher view = request.getRequestDispatcher("/TimKiem-AD.jsp");
               view.forward(request, response);
               conn.close();
               System.out.println("Disconnected!");
           }
          
           
           else if(chon.equals("mk")){
        	   String pid = request.getParameter("noidungtim");
          	 ArrayList al = null;
               ArrayList pid_list = new ArrayList();
               String query = "select MaDT, TenDT, TenSV,MSSV,TenGVHD,Khoa FROM tlcn  where MaKhoa='"+ pid+"'";
    
               System.out.println("query " + query);
               st = conn.createStatement();
               ResultSet rs = st.executeQuery(query);
    
               while (rs.next()) {
                   al = new ArrayList();
    
//                   out.println(rs.getString(1));
//                   out.println(rs.getString(2));
//                   out.println(rs.getString(3));
//                   out.println(rs.getString(4));
                  
                   al.add(rs.getString(1));
                   al.add(rs.getString(2));
                   al.add(rs.getString(3));
                   al.add(rs.getString(4));
                   al.add(rs.getString(5));
                   al.add(rs.getString(6));
                   System.out.println("al :: " + al);
                   pid_list.add(al);
               }
    
               request.setAttribute("piList", pid_list);
               RequestDispatcher view = request.getRequestDispatcher("/TimKiem-AD.jsp");
               view.forward(request, response);
               conn.close();
               System.out.println("Disconnected!");
           }
          
           }
         catch (Exception e) {
			response.setContentType("text/html");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('vui long kiem tra lai ');");
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
