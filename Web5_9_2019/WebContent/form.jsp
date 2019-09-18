<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="hihi.jsp" method="post">
		<table>
			<tr>
				<td colspan="3">
					DANG KY
					<ul style="padding-left:0px!important;margin:0;"><li>Dang ki nhanh qua Facebook</li></ul>
					<input type="button" value="Login with Facebook">
					<p>Dang ky moi bang tai khoan cua Tailieu.vn</p>
					<p></p>
					
				
				</td>
			</tr>
			<tr>
				<td>Nhap usename</td>
				<td>	<input type="text" placeholder="Nhap usename">	</td>
				<td>	<input type="text"  placeholder="Nhap ho va ten">	</td>
			</tr>
			<tr>
				<td>Nhap password</td>
				<td>	<input type="password"  placeholder="Nhap password">	</td>
				<td>	<select name="gioitinh">
							<option selected>Gioi tinh</option>
							<option>Nam</option>
							<option>Nu</option>
							<option>Khac</option>
						</select>	
				</td>
			</tr>
			<tr>
				<td>Nhap lai password</td>
				<td>	<input type="password"  placeholder="Nhap lai password">	</td>
				<td>	
					<select name="Ngaysinh">
							<option selected>Ngaysinh</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
					</select>
					<select name="Thang">
							<option selected>Thang</option>
							<option >1</option>
							<option>2</option>
							<option>3</option>
					</select>
					<select name="Nam">
							<option selected>Nam</option>
							<option >1997</option>
							<option>1998</option>
							<option>2000</option>
					</select>
				
				</td>
			</tr>
			<tr>
				<td>Nhap dia chi email</td>
				<td>	<input type="email"  placeholder="Nhap dia chi email">	</td>
				<td>	
					<select name="Tinh">
							<option selected>Tinh</option>
							<option >TTHue</option>
							<option>DaNang</option>
							<option>QuangNam</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Nhap lai dia chi email</td>
				<td>	<input type="email"  placeholder="Nhap lai dia chi email">	</td>
				<td>	<input type="text" placeholder="Nhap ma xac nhan">	</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" value="Dang ky">
					<input type="checkbox" checked> Toi dong y voi chinh sach va thoa thuan cua Tailieu.vn
					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>