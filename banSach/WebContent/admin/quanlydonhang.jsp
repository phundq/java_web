<%@page import="bean.viewHoaDon"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.hoadonbean"%>
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
	<br>
	<br>
	<br>
	<div class="container">
		<a href="admincontroller" class="btn btn-secondary float-right">Trang Quản trị</a>
		<h1 class="text-center mb-4">Danh sách đơn hàng</h1>
		<table class="table w-100">
			<tr>
				<th>Mã hóa đơn</th>
				<th>Họ tên</th>
				<th>Tổng số lượng</th>
				<th>Tổng tiền</th>
				<th>Ngày mua</th>
				<th>Trạng thái</th>

			</tr>

			<%
				ArrayList<viewHoaDon> ls = (ArrayList<viewHoaDon>) request.getAttribute("lHD");
				if (ls != null) {
					for (viewHoaDon l : ls) {
			%>
			<tr>
				<td><%=l.getMaHoaDon()%></td>
				<td><%=l.getHoTen()%></td>
				<td><%=l.getTongSL()%></td>
				<td><%=l.getTongTien()%></td>
				<td><%=l.getNgayMua()%></td>
				<td><%=l.isDaMua() == true ? "<span class='badge badge-success'>Đã thanh toán</span>"
							: "<span class='badge badge-warning'>Chưa thanh toán</span><a href='quanlydonhangcontroller?maHD="
									+ l.getMaHoaDon() + "' class='ml-2 p-2 badge badge-secondary'>Xác nhận</a>"%></td>

			</tr>




			<%
				}
				}
			%>
		</table>
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