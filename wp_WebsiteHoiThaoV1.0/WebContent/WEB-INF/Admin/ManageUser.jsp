<%@page import="java.util.ArrayList"%>
<%@page import="DAL.AdminDAL"%>
<%@page import="Models.RoleModels"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Quản lý người dùng</title>

<!-- Bootstrap -->
<link href="./public/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="./public/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Custom styling plus plugins -->
<script src="./public/jQuery/jquery-3.2.1.min.js"></script>
<script src="./public/js/bootstrap.min.js"></script>
<!-- custom design  -->
<link href="./public/css/myStyles.css" rel="stylesheet">
<script src="./public/js/jsCustom.js"></script>
</head>
<body>
	<div class="container-body">
		<div class="row">
			<!--  top navigation -->
			<div class="top-navigation">
				<ul class="navbar-nav">
					<li role="presentation" class="dropdown"><a
						href="javascript:;" class="dropdown-toggle info-number"
						data-toggle="dropdown" aria-expanded="false"><i id="inbox"
							class="fa fa-envelope-o" aria-hidden="true"
							style="font-size: 15px;"> <sup><span
									class="badge badge-default" style="background-color: #1ABB9C;">3</span></sup></i>
					</a>


						<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
							role="menu">
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li>
								<div class="text-center" style="text-align: center;">
									<a> <strong>Xem toàn bộ</strong> <i
										class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
						</ul></li>
					<li role="presentation" class="dropdown"><a
						href="javascript:;" class="dropdown-toggle info-number"
						data-toggle="dropdown" aria-expanded="false"><i id="notify"
							class="fa fa-bell-o" aria-hidden="true" style="font-size: 15px;">
								<sup><span class="badge badge-default"
									style="background-color: #1ABB9C;">7</span></sup>
						</i> </a>


						<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
							role="menu">
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li><a> <span class="image"><img
										src="./public/images/1.jpg" alt="Profile Image" /></span> <span>
										<span>Hoàng Kim Vũ</span> <span class="time">3 phút
											trước</span>
								</span> <span class="message"> bala bala bala bala... </span>
							</a></li>
							<li>
								<div class="text-center" style="text-align: center;">
									<a> <strong>Xem toàn bộ</strong> <i
										class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" href="#"
						data-toggle="dropdown"><img
							style="height: 20px; width: 20px; padding: 0 0 0px"
							src="./public/images/1.jpg" class="img-circle" alt=""> <%=session.getAttribute("Login")%>
							<span class="fa fa-angle-down"></span> </a>
						<ul class="dropdown-menu">
							<li><a href="profile.html"><i class="fa fa-user"></i>
									Trang cá nhân</a></li>
							<li><a href="#"><i class="fa fa-calendar"></i> Lịch
									trình</a></li>
							<li><a href="#"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<!-- end top navigation -->
			<!--  left navigation -->
			<div class="nav-side-menu">
				<div class="">
					<div class="title-web">
						<h3>
							<a href="home.html"><i class="fa fa-mortar-board"></i> <span>Website
									Hội Thảo</span></a>
						</h3>
					</div>
					<div class="clearfix"></div>
					<div class="img-info hidesmall">
						<div class="pic">
							<img src="./public/images/1.jpg" class="img-circle"
								alt="Cinque Terre" width="50" height="50"> Xin chào,
						</div>
						<div class="info">
							<h4>Công Trịnh Văn</h4>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
				<div class="hidesmall">
					<span>General</span>
				</div>
				<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse"
					data-target="#menu-content"></i>

				<div class="menu-list">

					<ul id="menu-content" class="menu-content collapse out">
						<li><a href="dashboard.html"> <i
								class="fa fa-dashboard fa-lg"></i> Bảng điều khiển
						</a></li>

						<li data-toggle="collapse" data-target="#products"
							class="collapsed active"><a href="#"><i
								class="fa fa-asterisk fa-lg"></i> Quản lý bài đăng<span
								class="arrow"></span></a></li>
						<ul class="sub-menu collapse" id="products">
							<li class="active"><a href="#">Danh sách bài mới</a></li>
							<li><a href="">Cập nhật trạng thái bài đăng</a></li>
							<li><a href="">Thống kê bài</a></li>
						</ul>


						<li data-toggle="collapse" data-target="#service"
							class="collapsed"><a href="#"><i
								class="fa fa-globe fa-lg"></i> Dịch vụ <span class="arrow"></span></a>
						</li>
						<ul class="sub-menu collapse" id="service">
							<li><a href="">Tư vấn trực tuyến</a></li>
							<li><a href="">Quản lý người dùng</a></li>
						</ul>


						<li data-toggle="collapse" data-target="#new" class="collapsed">
							<a href="#"><i class="fa fa-newspaper-o fa-lg"></i> Quản lý
								tin tức và sự kiện <span class="arrow"></span></a>
						</li>
						<ul class="sub-menu collapse" id="new">
							<li><a href="managernewsevent.html">Thêm mới</a></li>
							<li><a href="managernewsevent.html">Chỉnh sửa</a></li>
							<li><a href="managernewsevent.html">Xóa</a></li>
						</ul>

						<li data-toggle="collapse" data-target="#topics" class="collapsed">
							<a href="#"><i class="fa fa-newspaper-o fa-lg"></i> Quản lý
								chủ đề <span class="arrow"></span></a>
						</li>
						<ul class="sub-menu collapse" id="topics">
							<li><a href="managernewsevent.html">Thêm mới</a></li>
							<li><a href="managernewsevent.html">Chỉnh sửa</a></li>
							<li><a href="managernewsevent.html">Xóa</a></li>
						</ul>


						<li><a href="user.html"> <i class="fa fa-users fa-lg"></i>
								Trang cá nhân
						</a></li>

					</ul>
				</div>
			</div>
			<!-- end left navigation -->
			<!-- page content -->
			<div class="x-panel">
				<h1 class="tismal-page">
					<i class="fa fa-dashboard"></i> Quản lý người dùng
				</h1>

				<!--         <div class="row">
          <div class="col-lg-8 col-md-8 col-xs-12" style="padding: 0px;"> -->
				<div class="panel panel-default" style="border-radius: 0px;">
					<div class="panel-body">
						<div class="card">
							<ul class="nav nav-tabs cus" role="tablist">
								<li role="presentation" class="active"><a
									href="#createtopic" aria-controls="home" role="tab"
									data-toggle="tab"><i class="fa fa-arrows"></i> <span>Tạo
											mới</span></a></li>
								<li role="presentation"><a href="#modidytopic"
									aria-controls="profile" role="tab" data-toggle="tab"><i
										class="fa fa-edit"></i> <span>Chỉnh sửa</span></a></li>
								<li role="presentation"><a href="#removetopic"
									aria-controls="messages" role="tab" data-toggle="tab"><i
										class="fa fa-remove"></i> <span>Xóa</span></a></li>
								<li role="presentation"><a href="#settings"
									aria-controls="settings" role="tab" data-toggle="tab"><i
										class="fa fa-cog"></i> <span>Cài đặt</span></a></li>

							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="createtopic">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-xs-12">
											<span
												style="font-size: 16px; font-weight: bold; color: #73879C;">Information
												User</span>
										</div>
										<div class="col-lg-6 col-md-6 col-xs-12">
											<div class="search-message modifytopic-tab">
												<button type="submit">Go!</button>
												<input type="text" name="search" placeholder="Search for..."
													class="ipsearchmes">
											</div>
										</div>
									</div>

									<div class="clearfix"></div>
									<hr>
									
									<form action="AddMember" method="post">
										
										<div class="formtopic">
											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Tên đăng nhập </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="text" name="Uname" id="username" required="">
												</div>
											</div>
											<div class="clearfix"></div>

											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Mật khẩu </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="Password" id="pass" name="Password"
														required="">
												</div>
											</div>
											<div class="clearfix"></div>

											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Xác nhận mật khẩu </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="Password" id="confpass" name="Password"
														required="">
												</div>
											</div>
											<div class="clearfix"></div>

											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Phần quyền tài khoản </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<select name="rolename" class="form-control"
														style="border-radius: 0px;">
														<!-- insert code to load data -->
														<%
															ArrayList<RoleModels> lstRoles = AdminDAL.GetListRoles();
															for (RoleModels item : lstRoles) {%>
														<option value="<%=item.getRoleId()%>"><%=item.getRoleName()%></option>
														<%
															}
														%>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
											<hr>
											<div style="text-align: center;">
												<small id="stter" class="sttus-err">Vui lòng điền
													đầy đủ thông tin *</small><br> <small id="compa"
													class="sttus-err">Mật khẩu không khớp *</small><br>
												<button type="submit" class="btn btn-danger" id="creatus"
													style="border-radius: 0px;">
													Thêm mới <i class="fa fa-send"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
								<div role="tabpanel" class="tab-pane" id="modidytopic">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-xs-12">
											<span
												style="font-size: 16px; font-weight: bold; color: #73879C;">Information
												User</span>
										</div>
										<div class="col-lg-6 col-md-6 col-xs-12">
											<div class="search-message modifytopic-tab">
												<button>Go!</button>
												<input type="text" name="search" placeholder="Search for..."
													class="ipsearchmes">
											</div>
										</div>
									</div>

									<div class="clearfix"></div>
									<hr>
									<div class="formtopic">
										<form>
											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Tên đăng nhập </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="text" name="nametopic" disabled="true">
												</div>
											</div>
											<div class="clearfix"></div>

											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Mật khẩu </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="Password" name="Password" required="">
												</div>
											</div>
											<div class="clearfix"></div>

											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Xác nhận mật khẩu </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="Password" name="Password" required="">
												</div>
											</div>
											<div class="clearfix"></div>

											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Phân quyền người dùng </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="list" name="Decentralization" required="">
												</div>
											</div>
											<div class="clearfix"></div>
											<hr>
										</form>
										<div style="text-align: center;">
											<small id="stter" class="sttus-err">Vui lòng điền đầy
												đủ thông tin *</small><br> <small id="compa" class="sttus-err">Mật
												khẩu không khớp *</small><br>
											<button class="btn btn-danger" id="creatus"
												style="border-radius: 0px;">
												Lưu thay đổi <i class="fa fa-send"></i>
											</button>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="removetopic">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-xs-12">
											<span
												style="font-size: 16px; font-weight: bold; color: #73879C;">Thông
												tin người dùng</span>
										</div>
										<div class="col-lg-6 col-md-6 col-xs-12">
											<div class="search-message modifytopic-tab">
												<button>Go!</button>
												<input type="text" name="search" placeholder="Search for..."
													class="ipsearchmes">
											</div>
										</div>
									</div>
									<div class="clearfix"></div>
									<hr>
									<div class="formtopic">
										<form>
											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Tên đăng nhập </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="text" name="nametopic" required=""
														disabled="true">
												</div>
											</div>
											<div class="clearfix"></div>

											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Mật khẩu </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="Password" name="Password" required=""
														disabled="true">
												</div>
											</div>
											<div class="clearfix"></div>
											<div class="row space-fiels">
												<div class="col-md-3 col-sm-3 col-xs-12 alinetexxt">
													<label for="nametopic">Decentralization </label><span
														class="require">*</span>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="list" name="Decentralization" required=""
														disabled="true">
												</div>
											</div>
											<div class="clearfix"></div>
											<hr>
										</form>
										<div style="text-align: center;">
											<button class="btn btn-danger" id="creatus"
												style="border-radius: 0px;">
												Xóa người dùng <i class="fa fa-send"></i>
											</button>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="settings">
									Updating...</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  end page content -->
			<footer>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-xs-12"></div>
				<div class="col-lg-4 col-md-4 col-xs-12"></div>
				<div class="col-lg-4 col-md-4 col-xs-12">
					<h5>CopyRight &copy; 2017 - Trung tâm hội thảo Việt Nam
						Express</h5>
					<h6>
						<strong>Địa chỉ :</strong> 01 Võ Văn Ngân, phường Linh Chiểu, quận
						Thủ Đức, TP.Hồ Chí Minh
					</h6>
					<h6>
						<strong>Điện thoại :</strong> (+84) 1684 648 350
					</h6>
					<h6>
						<strong>E-mail :</strong> trungtamhoithao@gmail.com
					</h6>
				</div>
			</div>
			</footer>
		</div>
	</div>
</body>
</html>