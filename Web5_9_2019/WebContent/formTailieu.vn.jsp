<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
    <style>
        td{
            padding:5px 14px;
        }
   </style>

<%
	String userName = request.getParameter("userName");
	String hoTen = request.getParameter("hoTen");
	String passWord = request.getParameter("passWord");
	String rePassWord = request.getParameter("rePassWord");
	String email = request.getParameter("email");
	String reEmail = request.getParameter("reEmail");
	String gioiTinh = request.getParameter("gioiTinh");
	String ngay = request.getParameter("ngay");
	String thang = request.getParameter("thang");
	String nam = request.getParameter("nam");
	String diaChi = request.getParameter("diaChi");
	String maXacNhan = request.getParameter("maXacNhan");
	boolean xacNhan = request.getParameter( "xacNhan" ) != null;
	//
	boolean ktPass = true;
	boolean ktEmail = true;
	boolean ktMa = true;
	//
	
	if(userName!=null && hoTen!=null && passWord!=null && rePassWord!=null 
			&& email!=null && reEmail!=null && gioiTinh!=null && ngay!=null 
			&& thang!=null  && nam!=null && diaChi!=null && maXacNhan!=null
			&& email.equals(reEmail) && passWord.equals(rePassWord) &&maXacNhan.equals("aaa")
			)
	{
		out.print("<h1 class='text-primary m-5'>Đăng ký thành công</h1>");
	}else{
		if(email!=null && reEmail!=null && !email.equals(reEmail)){
			ktEmail= false;%>
			<style type="text/css">
			::-webkit-input-placeholder {
			   color: red;
			}
			:-moz-placeholder {
			   color: red;
			}
			::-moz-placeholder {
			   color: red;
			}
			:-ms-input-placeholder {
			   color: red;
			
			}
			</style>
		<%
		}
		if( passWord!=null && rePassWord!=null && email!=null && !passWord.equals(rePassWord)){
			ktPass= false;%>
			<style type="text/css">
			::-webkit-input-placeholder {
			   color: red;
			}
			:-moz-placeholder {
			   color: red;
			}
			::-moz-placeholder {
			   color: red;
			}
			:-ms-input-placeholder {
			   color: red;
			
			}
			</style>
		<%
		}
		if(maXacNhan!=null && !maXacNhan.equals("aaa")){
			ktMa= false;%>
			<style type="text/css">
			::-webkit-input-placeholder {
			   color: red;
			}
			:-moz-placeholder {
			   color: red;
			}
			::-moz-placeholder {
			   color: red;
			}
			:-ms-input-placeholder {
			   color: red;
			
			}
			</style>
		<%}%>













 
</head>
<body class="bg-dark">
    <div class="container">
        <div class="row">


            <div class="col-md-9 p-0 bg-white pb-3 m-5 rounded ">
                <div class="bg-primary p-2 pt-3 text-light ">
                    <h5>ĐĂNG KÝ</h5>
                </div>

                <form action="formTailieu.vn.jsp" method="post" class="m-3">
                    <table>
                        <tr>
                            <td colspan="4">


                                <h6> Đăng ký nhanh qua Facebook</h6>

                                <input type="button" value="Login with Facebook" class="btn-primary rounded mb-2">
                                <h6>Đăng kí mới bằng tải khoản TaiLieu.VN</h6>


                            </td>
                        </tr>
                        <tr>
                            <td>Nhập usename</td>
                            <td> <input type="text" name="userName" placeholder="Nhập username" required
                            <%=(userName!=null)?"value ='"+ userName +"'":" " %> > </td>
                            <td>Nhập họ tên</td>
                            <td> <input type="text" name="hoTen" placeholder="Nhập họ và tên" required
                            <%=(hoTen!=null)?"value ='"+ hoTen +"'":" " %>> </td>
                        </tr>
                        <tr>
                            <td>Nhập password</td>
                            <td> <input type="password" name="passWord" placeholder="Nhap password" required
                            <%=(passWord!=null)?"value ='"+ passWord +"'":" " %>> </td>
                            <td>Giới tính</td>
                            <td> <select name="gioiTinh">
                                    <option value="0" selected>Giới tính</option>
                                    <option value="1">Nam</option>
                                    <option value="2">Nữ</option>
                                    <option value="3">Khác</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Nhập lại password</td>
                            <td> <input type="password" name="rePassWord"  required 
                            <%=ktPass==false?"placeholder='nhập lại sai'":"placeholder='Nhập lại password '" %>
                            <%=(passWord!=null && passWord.equals(rePassWord))?"value ='"+ rePassWord +"'":" " %>> </td>
                            <td>Ngày sinh</td>
                            <td>
                                <select name="ngay">
                                    <option value="0" selected>Ngày sinh</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                                <select name="thang">
                                    <option value="0" selected>Tháng</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                                <select name="nam">
                                    <option selected>Năm</option>
                                    <option value="1997">1997</option>
                                    <option value="1998">1998</option>
                                    <option value="2000">2000</option>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td>Nhap dia chi email</td>
                            <td> <input type="email" name="email" placeholder="Nhập địa chỉ email" required
                            <%=(email!=null)?"value ='"+ email +"'":" " %>> </td>
                            <td>Tỉnh/ Thành phố</td>
                            <td>
                                <select name="diaChi">
                                    <option value="0" selected>Tinh</option>
                                    <option value="1">TT Huế</option>
                                    <option value="2">Đà Nẵng</option>
                                    <option value="3">Quảng Nam</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Nhập lại địa chỉ email</td>
                            <td> <input type="email" name="reEmail" required
                            <%=ktEmail==false?"placeholder='nhập lại sai'":"placeholder='Nhập lại Email'" %>
                            <%=reEmail!=null&& email.equals(reEmail)?"value ='"+ reEmail +"'":"" %>> </td>
                            <td>Nhập mã xác nhận</td>
                            <td> <input type="text" name="maXacNhan" required
                            <%=ktMa==false?"class='text-danger' placeholder='mã nhập sai'":"placeholder='Nhập mã xác nhận'"%>
                            <%=maXacNhan!=null&& maXacNhan.equals("aaa")?"value ='"+ maXacNhan +"'":"" %>><span class="ml-2">nhập <b>aaa</b></span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <input type="submit" name="dangKy" value="Dang ky" class="btn-info rounded" required>
                                <input class="ml-3" type="checkbox" name="xacNhan" checked> Toi dong y voi chinh sach va thoa thuan cua Tailieu.vn

                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
<%} %>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>

</html>