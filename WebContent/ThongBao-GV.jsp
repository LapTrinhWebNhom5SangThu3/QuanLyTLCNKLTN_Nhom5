<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <li class="active"><a href="#">Thông báo <span class="sr-only">(current)</span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="">Giáo viên</a></li>
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
			<li><a href="DoiThongTin-GV.jsp">Đổi thông tin</a></li>
			<li><a href="#openDoiMK">Đổi mật khẩu</a></li>

		</ul>
	<li class="item-145 nav-item"><a href="TimKiem-GV.jsp"><img src="pic/search-icon.png" alt="">Tìm kiếm</a></li>
	<li class="item-146 nav-item"><a href="DangLuanVan-GV.jsp"><img src="pic/icon_arrowup.png" alt=""> Đăng luận văn</a></li>
	<li class="item-147 nav-item"><a href="SoSanhLuanVan-AD.jsp"><img src="pic/icon=30x (1).png" alt="">So sánh luận văn</a></li>

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
        			<form method="post" action="update.jsp">
        				 	
						  <h2 id="dn">Đổi Mật Khẩu</h2>
						  <input id="input1" placeholder="Nhập mã tài khoản" type="text" required="" name="id">
						 <input id="input2" placeholder="Mật khẩu mới" type="password" required="" name="pass">
						 <input  id="btn1" type="submit" name="submit" value="Lưu">   
						   <input  id="btn2" type="submit" name="submit" value="Hủy">   
					</form>

    		</div>
		</div>

<div id="openUpload" class="modalDialog">
   			 <div>
        		<a href="#close" title="Close" class="close">X</a>
        			<form>
        				 	
						  <h2 id="dlv">Đăng luận văn</h2>
				 		<table>
				 			<tr>
				 				<td>
				 					<label >Tên luân văn </label><br> <input id="i1" type="text">
				 				</td>
				 				<td>
				 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				 				</td>

				 				<td>
				 					 <label >Khoa </label><br><input id="i2" type="text">
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>
				 					
				 					 <label >Mã đề tài </label><br><input id="i3" type="text">
				 				</td>
				 				<td>
				 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 				</td>
				 				<td>
				 					<label >Tải file  </label><br> <label class="btn btn-default btn-file">
    								Browse <input id="i4" type="file" style="display: none;"></label>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>
				 					 <label >Tên GV  </label><br>	<input id="i5" type="text">
				 				</td>
				 				<td>
				 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				 				</td>
				 				<td>
				 					<label >Nội dung </label><br><input id="i6" type="text">
				 				</td>
				 			</tr>
				 		</table>
						  <button id="btn1">Lưu</button>
						   <button id="btn2">Hủy</button>
					</form>

    		</div>
		</div>
	

</body>
</html>