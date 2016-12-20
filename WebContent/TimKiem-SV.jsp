<%@ page import ="java.sql.*" %>
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
<link rel="stylesheet" media="screen" href="css/giaodien.css">
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
        <li class="active"><a href="ThongBao-SV.jsp">Thông báo <span class="sr-only">(current)</span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Thông tin cá nhân <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#openinfor">Xem thông tin</a></li>
            <li><a href="DoiThongTin-SV.jsp">Đổi thông tin</a></li>
            <li><a href="#openDoiMK">Đổi mật khẩu</a></li>
          </ul>
        </li>
        <li><a href="TimKiem-SV.jsp">Tìm kiếm</a></li>
        <li><a href="DSDeTai-SV.jsp">Danh sách đề tài</a></li>
        <li><a href="TaiLieuThamKhao-SV.jsp">Tài liệu tham khảo</a></li>

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
				<div class="col-xs-3"><h3 align="center">Tìm kiếm</h3>
  
		
		<form method="post" name="frm" action="Search">
		<div><label>Tìm kiếm theo? <p></p><select class="form-control " name="timtheo" id ="timtheo"onchange="onCBChange(this);"></label>
					<option value="mdt" name="timtheo">Mã đề tài </option>
					<option value="msv" name="timtheo">Mã sinh viên</option>
					<option value="mk"name="timtheo" >Mã khoa</option>
					</select>
			</div>
			<p></p>
                            <div class="input-group" >
      <input type="text" class="form-control" placeholder="Nhập mã"  name="noidungtim"  id="noidungtim">
      <span class="input-group-btn">
        <button class="btn btn-default" type="submit" id="btnTim" value="Search">Tìm</button>
      </span>
      <span class="glyphicon glyphicon-search" width="100%"></span>

    </div>
        </form>
			<option></option>
		</select>
  
  </div>
  <div class="col-xs-9" ><h3 align="center">Danh sách đề tài</h3>
  
			<table class="table table-bordered">
				<tr>
					<th>Mã ĐT</th>
					<th>Tên ĐT</th>
					<th>Tên SV</th>
					<th>MSSV</th>
					<th>Tên GVHD</th>
					<th>Khoa</th>
					
				</tr>
				<c:forEach var="row" items="${result.rows}">
						<tr>
  								<td><c:out value="${row.MaDT}"/></td>
   								<td><c:out value="${row.TenDT}"/></td>
   								<td><c:out value="${row.TenSV}"/></td>
   								<td><c:out value="${row.MSSV}"/></td>
   								<td><c:out value="${row.TenGVHD}"/></td>
   								<td><c:out value="${row.Khoa}"/></td>
					</tr>
				</c:forEach>
				</table>
				
				<div class="well well-lg">               
                                  <table class="table table-bordered "  id="tthd">
                                      <thead>
                                       <tr>
                    <th>Mã ĐT</th>
					<th>Tên ĐT</th>
					<th>Tên SV</th>
					<th>MSSV</th>
					<th>Tên GVHD</th>
					<th>Khoa</th>
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

</div>
<div class="panel panel-default">
  <div class="panel-footer">
  	Designed By : Nhóm 5
		</div>

</div>
</div>
</div>
<div id="openDoiMK" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form>
        				 	
						  <h2 id="dn">Đổi mật khẩu</h2>
				 		<input id="input1" placeholder="Tên truy cập" type="text" required="">
						 <input id="input2" placeholder="Mật khẩu cũ" type="password" required="">
						 <input id="input2" placeholder="Mật khẩu mới" type="password" required="">
						 <input id="input2" placeholder="Nhập lại" type="password" required="">
						 
						  <button id="btn1">Lưu</button>
						   <button id="btn2">Hủy</button>
					</form>

    		</div>
		</div>

</body>
</html>