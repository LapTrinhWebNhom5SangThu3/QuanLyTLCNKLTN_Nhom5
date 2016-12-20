<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Thông báo!</title>

	<meta http-equiv="X-UA_Compatible" content="IE=edge">
		<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
	<link rel="stylesheet" media="screen" href="css/ThongBao.css">
	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>


</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/mydataweb"
     user="root"  password="Lehaidang2411"/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from sinhvien;
</sql:query>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<nav class="navbar navbar-default">
  				<div class="container-fluid">
    
    				<div class="navbar-header">
      					<a class="navbar-brand" href="#"><img src="pic/home.png" alt="" width="20%"></a>
    				</div>
    				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      
      						<ul class="nav navbar-nav navbar-right">
      						<ul class="nav navbar-nav">
					        	<li><a href="#"><u>Sitemap</u></a></li>
					        	<li><a href="#">Liên hệ</a></li>
					        	<li><a href="#">English</a></li>
					      	</ul>

        				<form class="navbar-form navbar-left">

        					<div class="form-group" >
          							<input  type="text" class="form-control" placeholder="Bạn muốn tìm gì?">
        					</div>
       					 <button type="submit" class="btn btn-default">Tìm kiếm</button>
      					</form>
      					</ul>
    				</div><!-- /.navbar-collapse -->
  				</div>
  				
  				<!-- /.container-fluid -->
			</nav>
				<div id="pic1">
  					<img src="pic/green1.jpg" alt="" width="100%">
  				</div>
  				<div class="row">
					<div class="col-md-12">
					<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Thông báo <span class="sr-only">(current)</span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="">Sinh Viên</a></li>
        <li><a href="TrangChu.jsp">Đăng xuất <img src="" alt="" width=""></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	</div>

				<div class="row">
			<div class="col-md-12">
				
				<div class="col-md-3">
				<div class="containter">
	<ul class="nav menu retailermenu">
	<li class="item-144 nav-item pure-menu-selected"><a href="#"><img src="pic/Security.png" alt="">Thông tin cá nhân</a></li>
		<ul>
			<li><a href="#openXemThongTin">Xem thông tin</a></li>
			<li><a href="DoiThongTin-SV.jsp">Đổi thông tin</a></li>
			<li><a href="#openDoiMK">Đổi mật khẩu</a></li>

		</ul>
	<li class="item-145 nav-item"><a href="TimKiem-SV.jsp"><img src="pic/search-icon.png" alt="">Tìm kiếm</a></li>
	<li class="item-146 nav-item"><a href="TaiLieuThamKhao-SV.jsp"><img src="pic/icon=30x.png" alt="">Tài liệu tham khảo</a></li>
	</ul>

</div>
				</div>
				<div class="col-md-1">
					
				</div>
				<div class="col-md-8">
					<table>
					<tr><th>Thông báo! <img src="pic/loa.png" alt="" width="10%"></th></tr>
					<tr>
						<td>Thông báo 1: </td>
						<td><u><i><a href="">Chi tiết</a></i></u></td>
					</tr>
					<tr>
						<td>Thông báo 2: </td>
						<td><u><i><a href="">Chi tiết</a></i></u></td>
					</tr>
					<tr>
						<td>Thông báo 3: </td>
						<td><u><i><a href="">Chi tiết</a></i></u></td>
					</tr>
						
					</table>
				</div>
			</div>
		</div>
	</div>
			</div>
			</div>
			<div class="panel panel-default">
  <div class="panel-footer">
  	Designed By : Nhóm 5
		</div>

<div id="openDoiMK" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form method="post" action="update.jsp">
        				 	
						  <h2 id="dn">Đổi Mật Khẩu</h2>
						  <input id="input1" placeholder="Nhập mã tài khoản" type="text" required="" name="id">
						 <input id="input2" placeholder="Mật khẩu mới" type="password" required="" name="pass">
						 <input  id="btn1" type="submit" name="submit" value="Lưu">   
						   <input  id="btn2" type="submit" name="submit" value="Hủy">   
					</form>

    		</div>
		</div>
		
		
		
		<div id="openXemThongTin" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form method="post" action="thongtinsv.jsp">
        				 	
						  <h2 id="dn">Thông tin sinh viên</h2>
						  <table class="table table-bordered">
				<tr>
					<th>MSSV</th>
					<th>Họ tên</th>
					<th>Giới tính</th>
					<th>Ngày sinh</th>
					<th>Email</th>
					<th>Địa chỉ</th>
					<th>Mã ngành</th>
					
				</tr>
			<%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                <td><%=pList.get(4)%></td>
                <td><%=pList.get(5)%></td>
                 <td><%=pList.get(6)%></td>
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
				</table>
						  
					</form>

    		</div>
		</div>


</body>
</html>