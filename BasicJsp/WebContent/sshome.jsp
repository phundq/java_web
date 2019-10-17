
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
@import url('https://fonts.googleapis.com/css?family=Numans');
html,body{
background-image: url('nendangnhap.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;

}
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

	session.setAttribute("page","sshome.jsp");


%>
<body class="">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav w-100 d-flex flex-end justify-content-between align-items-center">
			<div class="d-flex flex-row align-items-baseline" style="margin-top: -4px;"><li class="nav-item active"><a class="nav-link text-warning" href="sshome.jsp"><span style="font-size: 28px;">Sach.org</span></a></li>
			<li class="nav-item mx-3"><a class="nav-link" href="sstrang1.jsp">Chọn sách</a></li>
			<li class="nav-item"><a class="nav-link" href="sstrang2.jsp">Giỏ hàng</a></li></div>
			<div class="d-flex"><li class="nav-item"><a class="nav-link text-warning" href="ssdangnhap.jsp"><%=(session.getAttribute("un") != null) ? session.getAttribute("un") :"Đăng nhập" %></a></li>
			<li class="nav-item"><a class="nav-link btn btn-secondary py-1 mt-1 ml-4" href="ssdangxuat.jsp">Đăng xuất</a></div>
			</li>
		</ul>
	</nav>
	<!--  end nav--> 
	<div class=" container text-light pr-3" style="padding-top: 245px; font-family: 'Numans', sans-serif;">
		<div class="  float-right">
			<span class=""style="font-size: 35px; font-style: italic;">Chào mừng bạn đến với </span><span class="font-italic display-2 font-weight-bold"> Sach.org</span>
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