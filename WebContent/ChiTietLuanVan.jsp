<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Tìm kiếm</title>
<link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
<link rel="stylesheet" media="screen" href="css/TimKiemAD.css">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/mydataweb"
     user="root"  password="Lehaidang2411"/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from tlcn;
</sql:query>
<div class="container">
		<div class="row">
			<div class="col-md-12">
			<nav class="navbar navbar-default">
  				<div class="container-fluid">
    
    				<div class="navbar-header">
      					<a class="navbar-brand" href="#"><img src="pic/home.png" alt="" width="17%"></a>
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
        <li class="active"><a href="GuiThongBao-AD.jsp">Thông báo <span class="sr-only">(current)</span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Thông tin cá nhân <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#openThemTK">Thêm tài khoản</a></li>
            <li><a href="#openKhoaTK">Vô hiệu hóa</a></li>
            <li><a href="#">Đổi mật khẩu</a></li>
          </ul>
        </li>
        <li><a href="TimKiem-AD.jsp">Tìm kiếm</a></li>
        <li><a href="LocLuanVan-AD.jsp">Lọc luận văn</a></li>
        <li><a href="SoSanhLuanVan-AD.jsp">So sánh luận văn</a></li>

      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a href=""></a></li>
        <li><a href="TrangChu.jsp">Đăng xuất <img src="" alt="" width=""></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->
</nav>

				<div class="row">
			<div class="col-md-12">
				<h3 align="center">Chi tiết đề tài</h3>
  
				<div class="well well-lg">               
                                 <table class="table table-bordered "  id="tthd">
                                      <thead>
                                       <tr>
                    <th>Mã ĐT</th>
					<th>Tên ĐT</th>
					<th>MSSV</th>
					<th>Tên SV</th>
					<th>Tên GVHD</th>
					<th>Mã GVHD</th>
					<th>Khoa</th>
					<th>Mã Khoa</th>
					<th>Tên GVPB</th>
					<th>Điểm</th>
					<th>Năm học</th>
					<th>File tài liệu</th>
                                  </tr>
                                      </thead>
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
                <td><%=pList.get(7)%></td>
                <td><%=pList.get(8)%></td>
                <td><%=pList.get(9)%></td>
                <td><%=pList.get(10)%></td>
                <td><%=pList.get(11)%></td>
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
                                
                                
            </div>
    		</div>
		</div>
	</div>


</div>
<div class="panel panel-default">
  <div class="panel-footer">
  	Designed By : Nhóm 5
		</div>

</div>
</div>
</div>

<div id="openKhoaTK" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form method="post"  action="delete.jsp">
        				 	
						  <h2 id="dn">Vô Hiệu Hoá Tài Khoản</h2>
				 		<input id="input1" placeholder="Mã tài khoản" type="text" name="idtk">
						 
						  <a href="#"><button id="btn1" type="submit">Lưu</button></a>
						  <a href="#"> <button id="btn2" type="reset">Hủy</button></a>
					</form>

    		</div>
		</div>
		
		
		<div id="openXoa" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form  method="post" action="delete_dt.jsp">
        				 	
						 <h2 id="dn">Xóa Đề Tài</h2>
						  <input id="input1" placeholder="Nhập ID (*)" type="text"  name="id">
						  <p>(*) Nhập mã của đề tài cần xóa</p>
						  <input  id="btn1" type="submit" value="Xóa"  />
                        <input id="btn2"  type="reset" value="Hủy" />
					</form>

    		</div>
		</div>
		<div id="openChiTiet" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form  method="post" action="">
        				 	
						 <h2 id="dn">Xem chi tiết luận văn</h2>
						  <input id="input1" placeholder="Nhập mã đề tài " type="text"  name="id">
						  <input  id="btn1" type="submit" value="Xem"  />
                        <input id="btn2"  type="reset" value="Hủy" />
					</form>

    		</div>
		</div>
<div id="openThemTK" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form  method="post" action="registration.jsp">
        				 	
						 <h2 id="dn">Thêm Tài Khoản</h2>
						  <input id="input1" placeholder="Mã ID" type="text"  name="id">
				 		<input id="input1" placeholder="Tên truy cập" type="text"  name="uname">
						 <input id="input2" placeholder="Mật khẩu" type="password" name="pass">
						 <input id="input1" placeholder="Level" type="text" name="level">
						 
						 
						  <input  id="btn1" type="submit" value="Đăng ký"  />
                        <input id="btn2"  type="reset" value="Hủy" />
					</form>

    		</div>
		</div>


		

</body>
</html>