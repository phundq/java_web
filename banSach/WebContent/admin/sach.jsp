<%@page import="bean.loaisachbean"%>
<%@page import="bean.sachadminbean"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Document</title>
<style>
nav {
	position: fixed !important;
	width: 100vw;
	height: 46px;
	z-index: 99;
	top: 0px;
	padding-right: 40px !important;
}

a {
	color: black;
	text-decoration: none;
}

a:hover {
	color: #37c509 !important;
	text-decoration: none;
}
</style>
</head>
<%
	
%>

<body class="w-100">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul
			class="navbar-nav w-100 d-flex flex-end justify-content-between align-items-center">
			<div class="d-flex flex-row align-items-baseline"
				style="margin-top: -4px;">
				<li class="nav-item"><a class="nav-link text-warning" href="#"><span
						style="font-size: 28px;">Sach.org</span></a></li>
				<li class="nav-item active mx-3"><a class="nav-link"
					href="sachcontroller">Chọn sách</a></li>
				<li class="nav-item"><a class="nav-link"
					href="giohangcontroller">Giỏ hàng</a></li>
			</div>
			<div class="d-flex">
				<li class="nav-item"><a class="nav-link text-warning"
					href="dangnhapcontroller"><%=(session.getAttribute("un") != null) ? session.getAttribute("un") : "Đăng nhập"%></a></li>
				<li class="nav-item"><a
					class="nav-link btn btn-secondary py-1 mt-1 ml-4"
					href="dangxuatcontroller">Đăng xuất</a>
			</div>
			</li>
		</ul>
	</nav>
	<br>
	<br>
	<%
		sachadminbean sachad = (sachadminbean) request.getAttribute("sachChon");
	%>
	<div class="container-fluid">
		<a href="admincontroller" class="btn btn-secondary float-right">Trang
			Quản trị</a><br> <br>
		<form action="quanlysachcontroller" enctype= "multipart/form-data">
			<div class="row">
				<div class="col-6 " style="padding-left: 400px !important;">
					<label>Mã sách</label><br> <input type="text" name="txtMaSach"
						value="<%= sachad != null ? sachad.getMasach() : " "%>" <%= sachad != null ? " readonly":" "%>><br>
					<br> <label>Tên sách</label><br> <input type="text"
						name="txtTebSach" value="<%= sachad != null ? sachad.getTensach() : " "%>"><br> <br> <label>Tác
						giả</label><br> <input type="text" name="txtTacGia" value="<%= sachad != null ? sachad.getTacgia() : " "%>"><br>
					<br> <label>Giá</label><br> <input type="number"
						name="txtGia" value="<%= sachad != null ? sachad.getGia() : " "%>"><br>

				</div>
				<div class="col-6" style="padding-left: 100px !important;">
					<label>Số lượng</label><br> <input type="number"
						name="txtSoLuong" value="<%= sachad != null ? sachad.getSoluong() : " "%>"><br> <br> <label>Ngày
						nhập</label><br> <input type="date" name="txtNgayNhap" value="<%= sachad != null ? sachad.getNgaynhap() : " "%>"><br>
					<br> <label>Ảnh</label><br> <input type="file"
						name="txtAnh" value="<%= sachad != null ? sachad.getAnh() : " "%>"><br> <br> <label>Số tập</label><br>
					<input type="text" name="txtSoTap" value="<%= sachad != null ? sachad.getSotap() : " "%>"><br> <br> <select
						name="maLoai">
						<%
							ArrayList<loaisachbean> lsLoai = (ArrayList<loaisachbean>) request.getAttribute("lsLoai");
							if (lsLoai != null) {
								for (loaisachbean l : lsLoai) {
						%>
						<option value="<%=l.maloai%>"><%=l.tenloai%></option>
						<%
							}
							}
						%>
					</select><br>
				</div>
			</div>
			<div class="row pb-3" style="padding-left: 400px !important;">
				<button type="submit" name="btnThem" value="1" class="btn btn-default m-3">Thêm</button>
				<button type="submit" name="btnSua" value="1" class="btn btn-default m-3">Sửa</button>
			</div>
			<table class="table w-100">
				<tr>
					<th>Mã sách</th>
					<th>Tên sách</th>
					<th>Tác giả</th>
					<th>Giá</th>
					<th>Số lượng</th>
					<th>Ảnh</th>
					<th>Số tập</th>
					<th>Thao tác</th>

				</tr>

				<%
					ArrayList<sachadminbean> ls = (ArrayList<sachadminbean>) request.getAttribute("lsSach");
					if (ls != null) {
						for (sachadminbean l : ls) {
				%>
				<tr>
					<td><%=l.getMasach()%></td>
					<td><%=l.getTensach()%></td>
					<td><%=l.getTacgia()%></td>
					<td><%=l.getGia()%></td>
					<td><%=l.getSoluong()%></td>
					<td><%=l.getAnh()%></td>
					<td><%=l.getSotap()%></td>
					<td><a
						href="quanlysachcontroller?maSachChon=<%=l.getMasach()%>"
						class="btn btn-outline-primary">Chọn</a> <a
						href="quanlysachcontroller?maSachXoa=<%=l.getMasach()%>"
						class="btn btn-outline-warning">Xóa</a></td>

				</tr>




				<%
					}
					}
				%>

				</form>
				</div>


				<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
					integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
					crossorigin="anonymous"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
					integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
					crossorigin="anonymous"></script>
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
					integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
					crossorigin="anonymous"></script>
</body>

</html>