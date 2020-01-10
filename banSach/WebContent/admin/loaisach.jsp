<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaisachbean"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
		<div class="row">
			<div class="w-100">
			<a href="admincontroller" class="btn btn-secondary">Trang Quản trị</a>
				<button class="btn btn-info float-right" data-toggle="modal"
					data-target="#modalThem">Them</button>
			</div>
			<div class="w-100 table-responsive mt-3">
				<table class="table">
					<tr>
						<th>Ma loai</th>
						<th>Ten loai</th>
						<th>Thao tac</th>
					</tr>
					<%
						ArrayList<loaisachbean> lsLoai = (ArrayList<loaisachbean>) request.getAttribute("lsLoai");
						int i= 0;
						for (loaisachbean loai : lsLoai) {
							
					%>
					<tr>
						<td><%=loai.getMaloai()%></td>
						<td><%=loai.getTenloai()%></td>
						<td>
							<!--modal--> <!-- Modal Them -->



							<button class="btn btn-success" data-toggle="modal"	data-target="#modalSua<%=i %>">Sua</button>
							
							<div class="modal fade" id="modalSua<%=i %>" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<form action="loaisachcontroller" method="get">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Sua Loai sach</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
										<div class="input-group">
												<label for="maLoai">Ma Loai</label> 
												<input type="hidden"	name="txtMaLoai" placeholder="<%= loai.getMaloai()%>" value="<%= loai.getMaloai()%>">
										</div>
										<div class="input-group">
												<label for="tenLoai">Ten Loai</label> 
												<input type="text"	name="txtTenLoai" placeholder="<%= loai.getTenloai()%>" value="<%= loai.getTenloai()%>">
										</div>			
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="submit" class="btn btn-primary" name="btnSua" value="a">Luu lai</button>
										</div>
									</div>
								</div>
							</form>
						</div>
							<a href="loaisachcontroller?btnXoa=a&txtMaLoai=<%=loai.getMaloai()%>" class="btn btn-danger">Xoa</a>

						</td>
					</tr>
					<%
					i++;
						}
					%>
				</table>
			</div>
		</div>
	</div>



	<div class="modal fade" id="modalThem" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<form action="loaisachcontroller" method="get">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Them loai sach</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					<div class="input-group">
							<label for="maLoai">Ma Loai</label> 
							<input type="text"	name="txtMaLoai" placeholder="nhap ma loai">
					</div>
					<div class="input-group">
							<label for="tenLoai">Ten Loai</label> 
							<input type="text"	name="txtTenLoai" placeholder="nhap ten loai">
					</div>			
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-secondary"
							data-dismiss="modal">Huy</button>
						<button type="submit" class="btn btn-primary" name="btnThem" value="a">Them</button>
					</div>
				</div>
			</div>
		</form>
	</div>


<%if(request.getAttribute("ktThem")!=null) {%>
<script type="text/javascript">
alert("Them khong thanh cong");
</script>
<%} %>
<%if(request.getAttribute("ktSua")!=null) {%>
<script type="text/javascript">
alert("Sua khong thanh cong");
</script>
<%} %>
<%if(request.getAttribute("ktXoa")!=null) {%>
<script type="text/javascript">
alert("Xoa khong thanh cong");
</script>
<%} %>


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