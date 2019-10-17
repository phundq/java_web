<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
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

nav{
position: fixed!important;
width:100vw;
height:46px;
z-index: 99;
top: 0px; 
padding-right: 40px!important;
}
</style>
</head>
<%
	if (session.getAttribute("un") == null) {
		response.sendRedirect("ssdangnhap.jsp");
	}
		session.setAttribute("page", "sstrang2.jsp");
%>
<body class="">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav w-100 d-flex flex-end justify-content-between align-items-center">
			<div class="d-flex flex-row align-items-baseline" style="margin-top: -4px;"><li class="nav-item "><a class="nav-link text-warning" href="sshome.jsp"><span style="font-size: 28px;">Sach.org</span></a></li>
			<li class="nav-item mx-3"><a class="nav-link" href="sstrang1.jsp">Chọn sách</a></li>
			<li class="nav-item active"><a class="nav-link" href="sstrang2.jsp">Giỏ hàng</a></li></div>
			<div class="d-flex"><li class="nav-item "><a class="nav-link text-warning" href="ssdangnhap.jsp"><%=session.getAttribute("un") %></a></li>
			<li class="nav-item"><a class="nav-link btn btn-secondary py-1 mt-1 ml-4" href="ssdangxuat.jsp">Đăng xuất</a></div>
			</li>
		</ul>
	</nav>
	<!-- end nav -->
	<%giohangbo gh=null; %>
<div class="container pt-5">
<% 
if(session.getAttribute("kt")!=null){
	int k=(int)session.getAttribute("kt");
	if(k==0){
	out.print("<h5 class='text-danger float-right mt-2 border border-danger rounded py-2 px-3'>số lượng nhập không chính xác</h5>");
}
	if(k==5){
		out.print("<h5 class='text-danger float-right mt-2 border border-danger rounded py-2 px-3'>mời nhập số lượng</h5>");
	}
	if(k==1){
		out.print("<h5 class='text-success float-right mt-2 border border-success rounded py-2 px-3'>thao tác thành công</h5>");
	}
	
} %>

	<table class="table table-hover mt-5">
	<tr>
		<th>Tên sách</th>
		<th>Tác giả</th>
		<th>Giá</th>
		<th>Số lượng</th>
		<th>Thành tiền</th>
		<th>Thao tác</th>
	</tr>
<%
	if(session.getAttribute("gh")!=null){
		
		gh=(giohangbo)session.getAttribute("gh");
		for(giohangbean g: gh.ds){%>
			<tr>
			<td><%=g.getTenSach() %></td>
			<td><%=g.getTacGia() %></td>
			<td><%=g.getGia() %></td>
			<form action="mua.jsp">
			<td class=""><%=g.getSoLuong() %> &emsp; <input type="number" class="" name="numsl"></td>
			<td><%=g.getThanhTien() %></td>
			<td>
				<input type="hidden" name="ms2" value="<%=g.getMaSach()%>">
				<button type="submit" class="rounded btn-primary" name="action" value="them">Thêm</button>
				<button type="submit" class="rounded btn-warning" name="action" value="xoa">Xóa</button>			
			</td>
			</form>
			
			</tr>
			
								<%}
		}else{
		
	}
session.setAttribute("kt", null);
%>
</table>
<div align="right" class="font-weight-bold"><h5 class="text-danger"><span style="color:black!important;">Tổng tiền: </span><%=(session.getAttribute("gh")!=null)?gh.tongTien():"0" %> đ</h5> </div>
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