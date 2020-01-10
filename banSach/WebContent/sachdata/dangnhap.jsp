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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<title>Document</title>
<style>
/* Made with love by Mutiullah Samim*/

@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('nendangnhap.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;

}

.container{
height: 87%;
align-content: center;
font-family: 'Numans', sans-serif;
}

.card{
height: 370px;
margin-top: 14%;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
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
<!-- ------------------------------------------------------------------------------------------------------- -->

<% 
String un=null;
if (session.getAttribute("un") != null) {
	un= session.getAttribute("un").toString();
}

%>
<body class="">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav w-100 d-flex flex-end justify-content-between align-items-center">
			<div class="d-flex flex-row align-items-baseline" style="margin-top: -4px;"><li class="nav-item"><a class="nav-link text-warning" href="#"><span style="font-size: 28px;">Sach.org</span></a></li>
			<li class="nav-item mx-3"><a class="nav-link" href="sachcontroller">Chọn sách</a></li>
			<li class="nav-item"><a class="nav-link" href="giohangcontroller">Giỏ hàng</a></li></div>
			<div class="d-flex"><li class="nav-item  active"><a class="nav-link text-warning" href="dangnhapcontroller"><%=(session.getAttribute("un") != null) ? un :"Đăng nhập" %></a></li>
			<li class="nav-item"><a class="nav-link btn btn-secondary py-1 mt-1 ml-4" href="dangxuatcontroller">Đăng xuất</a>
			</li>
		</ul>
	</nav>
	
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Đăng nhập</h3>
			</div>
			<div class="card-body">
				<form action="dangnhapcontroller" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" name="txtun" placeholder="tên đăng nhập">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" name="txtpw" placeholder="mật khẩu">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Lưu đăng nhập
					</div>
					<div class="form-group">
						<input type="submit" value="Đăng nhập" name="btn" class="btn float-right login_btn">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Chưa có tài khoản?<a href="#">Đăng ký</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Quên mật khẩu?</a>
				</div>
			</div>
		</div>
	</div>
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	


<!-- ------------------------------------------------------------------------------------------------------ -->
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