<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Đổi thông tin</title>

	<meta http-equiv="X-UA_Compatible" content="IE=edge">
		<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
	<link rel="stylesheet" media="screen" href="css/ThongBao.css">
	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>


</head>
<body>
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
        <li class="active"><a href="ThongBao-GV.html">Thông báo <span class="sr-only">(current)</span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a href=""></a></li>
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
	<li class="item-144 nav-item pure-menu-selected"><a href=""><img src="pic/Security.png" alt="">Thông tin cá nhân</a></li>
		<ul>
			<li><a href="#openinfor">Xem thông tin</a></li>
			<li><a href="">Đổi thông tin</a></li>
			<li><a href="#openDoiMK">Đổi mật khẩu</a></li>

		</ul>
	<li class="item-145 nav-item"><a href="TimKiem-GV.jsp"><img src="pic/search-icon.png" alt="">Tìm kiếm</a></li>
	<li class="item-146 nav-item"><a href="DangLuanVan-GV.jsp"><img src="pic/icon_arrowup.png" alt=""> Đăng luận văn</a></li>

</div>
				</div>
				<div class="col-md-1">
					
				</div>
				<div class="col-md-8">
					<table>
					<tr><th><img src="pic/red-edit-icon-glossy-29.png" alt="" width="8%"> Đổi Thông Tin </th></tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td> <label>MSGV <br><input id="ip1" type="text" name=""></label></td>
						<td><label>Bộ môn <br> <input type="text" name=""></label></td>
					</tr>
					<tr>
						<td> <label>Họ tên <br> <input type="text" name=""></label></td>
						<td> <label>Email <br><input type="text" name=""></label></td>
						
					<tr>
						<td> <label>Khoa <br><input type="text" name=""></label></td>
						<td><a href=""><button id="btLuu">Lưu</button></a></td>
						<td><a href=""><button id="btHuy">Hủy</button></a></td>
						
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

		<div id="openinfor" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form>
        				 	<table id="table1" class="table table-condensed">
        				 	<tr>
        				 		<th id="th1">Ảnh</th>
        				 		<th id="th2">Thông tin</th>
        				 	</tr>
        				 	<tr>
        				 		<td>
        				 			
        				 		</td >
        				 		<td id="td1">
        				 			MSGV: 
									<p></p>
									Họ và tên: 
									<p></p>
									Khoa:
									<p></p>
									Bộ Môn:
									<p></p>
									Email:

        				 		</td>
        				 	</tr>

							</table>
					</form>

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