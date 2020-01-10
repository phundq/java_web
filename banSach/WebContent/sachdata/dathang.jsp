<%@page import="bean.khachhangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
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
</style>
</head>
<%
khachhangbean kh = null;
if(session.getAttribute("un") != null){
	kh = (khachhangbean)session.getAttribute("un");
}
%>

<%
	long sl = 0, tt = 0;
	giohangbo g1 = (giohangbo) session.getAttribute("gh");
	if (g1 != null) {
		sl = g1.ds.size();
		tt = g1.tongTien();
	}

	session.setAttribute("page", "giohang.jsp");
%>
<body class="">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul
			class="navbar-nav w-100 d-flex flex-end justify-content-between align-items-center">
			<div class="d-flex flex-row align-items-baseline"
				style="margin-top: -4px;">
				<li class="nav-item "><a class="nav-link text-warning" href="#"><span
						style="font-size: 28px;">Sach.org</span></a></li>
				<li class="nav-item mx-3"><a class="nav-link"
					href="sachcontroller">Chọn sách</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="giohangcontroller">Giỏ hàng(<%=sl%>:<%=tt%>đ)
				</a></li>
				<%
					if (kh != null) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="lichsumuacontroller">Lịch sử mua</a></li>
				<%
					}
				%>
			</div>
			<div class="d-flex">
				<li class="nav-item "><a class="nav-link text-warning"
					href="dangnhapcontroller"><%=kh != null ? kh.getHoten():"Đăng nhập"%></a></li>
				<li class="nav-item"><a
					class="nav-link btn btn-secondary py-1 mt-1 ml-4"
					href="dangxuatcontroller">Đăng xuất</a>
			</div>
			</li>
		</ul>
	</nav>
	<!-- end nav -->
	<div class="container p-5 text-center">
	<%if(session.getAttribute("maHD")!=null){ %>
		<h1 class="bg-info p-2 m-5">Đặt hàng thành công</h1>
		<h4 class=" p-2 m-5">Mã hóa đơn: <%=session.getAttribute("maHD") %></h4>
		<table class="table w-100">
			<tr>
				<th>Tên sách</th>
				<th>giá</th>
				<th>Số lượng</th>
			</tr>
			<%
					giohangbo gh = null;
					int tongTien = 0;
					if (session.getAttribute("gh") != null) {

						gh = (giohangbo) session.getAttribute("gh");
						for (giohangbean g : gh.ds) {
							tongTien+= g.getThanhTien();
				%>
				<tr>

					<td><%=g.getTenSach()%></td>
					<td><%=g.getGia()%></td>
					<td><%=g.getSoLuong()%></td>
					</tr>
					<%}} %>
		</table>
		<div class="w-100 my-3">
			<h5 class="float-right mr-4">Tổng tiền: <span class="text-danger"><%=tongTien %></span> đ</h5>
		</div>
		<%}else{ %>
		<h1 class="bg-danger text-white p-2 m-5">Đặt hàng không thành công</h1>
		<%} %>
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