<%@page import="bean.khachhangbean"%>
<%@page import="bean.loaisachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
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
	khachhangbean kh = null;
	if (session.getAttribute("un") != null) {
		kh = (khachhangbean) session.getAttribute("un");
	}
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
				<li class="nav-item"><a class="nav-link text-warning"
					href="dangnhapcontroller"><%=kh != null ? kh.getHoten() : "Đăng nhập"%></a></li>
				<li class="nav-item"><a
					class="nav-link btn btn-secondary py-1 mt-1 ml-4"
					href="dangxuatcontroller">Đăng xuất</a>
			</div>
			</li>
		</ul>
	</nav>

	<!-- end nav -->
	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-2">
				<h5>Tìm kiếm</h5>
			</div>
			<div class="col-10">
				<form action="sachcontroller">
					<div class="rounded input-group">
						<input type="text" class="w-100 rounded" name="sachSearch">
						<input
							style="margin: -40px; z-index: 99; height: 30px; margin-top: 0px;"
							type="submit">
					</div>
				</form>
			</div>

		</div>
	</div>
	<div class="container">
		<div class="row pt-2">
			<div class="col-2" style="margin-top: 48px;">
				<h3>Loại sách</h3>
				<hr>
				<%
					ArrayList<loaisachbean> dsloai = (ArrayList<loaisachbean>) request.getAttribute("dsloai");
					int nloai = dsloai.size();
					for (int i = 0; i < nloai; i++) {
						loaisachbean s = dsloai.get(i);
				%>
				<a href="sachcontroller?maLoai=<%=s.maloai%>"><h6><%=s.tenloai%></h6></a>
				<hr>
				<%
					}
				%>
			</div>
			<div class="col-10 " style="margin-top: 0px;">
				<div class="w-100 text-left mt-5">
					<h3 class="text-body">Sách nổi bật</h3>
					<hr>
				</div>
				<%
					ArrayList<sachbean> ds = (ArrayList<sachbean>) request.getAttribute("dssach");
					int ss = ds.size();
					for (int i = 0; i < ss; i++) {
						sachbean s = ds.get(i);
				%>

				<div class="row text-center my-5 pt-4">

					<div class="col-md-4">
						<div class="" style="width: 176px; height: 200px; margin: auto;">
							<img class="w-100 h-100" alt="" src='<%=s.getAnh()%>'>
						</div>
						<br> <span class="font-weight-bold"><%=s.getTensach()%></span><br>
						<span class="text-body">Tác giả: </span><span class="text-primary"><%=s.getTacgia()%></span><br>
						<span class="font-weight-bold">Giá bán: </span><span
							class="font-weight-bold text-danger"><%=s.getGia()%> đ</span><br>
						<a
							href="muacontroller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img
							alt="" src="mua.jpg"></a>
					</div>
					<div class="col-md-4">
						<%
							i++;
								if (i < ss) {
									s = ds.get(i);
						%>
						<div class="" style="width: 176px; height: 200px; margin: auto;">
							<img class="w-100 h-100" alt="" src='<%=s.getAnh()%>'>
						</div>
						<br> <span class="font-weight-bold"><%=s.getTensach()%></span><br>
						<span class="text-body">Tác giả: </span><span class="text-primary"><%=s.getTacgia()%></span><br>
						<span class="font-weight-bold">Giá bán: </span><span
							class="font-weight-bold text-danger"><%=s.getGia()%> đ</span><br>
						<a
							href="muacontroller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img
							alt="" src="mua.jpg"></a>
					</div>

					<%
						}
					%>
					<div class="col-md-4">
						<%
							i++;
								if (i < ss) {
									s = ds.get(i);
						%>
						<div class="" style="width: 176px; height: 200px; margin: auto;">
							<img class="w-100 h-100" alt="" src='<%=s.getAnh()%>'>
						</div>
						<br> <span class="font-weight-bold"><%=s.getTensach()%></span><br>
						<span class="text-body">Tác giả: </span><span class="text-primary"><%=s.getTacgia()%></span><br>
						<span class="font-weight-bold">Giá bán: </span><span
							class="font-weight-bold text-danger"><%=s.getGia()%> đ</span><br>
						<a
							href="muacontroller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img
							alt="" src="mua.jpg"></a>
					</div>

					<%
						}
					%>
				</div>
				<%
					}
				%>

			</div>
		</div>
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