<%@ page import ="java.sql.*" %>
<%
  	String madt1 = request.getParameter("madt1");  
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydataweb",
          "root", "Lehaidang2411");
  Statement st = con.createStatement();
  ResultSet rs;
  rs = st.executeQuery("select * from detai where MaDT='" +madt1 + "'");
  %>
 <script>
function input(){
    var text = rs.getString(8);
    document.forms.form1.doc1.value = text;
}    
response.sendRedirect("SoSanhLuanVan.jsp");
</script>