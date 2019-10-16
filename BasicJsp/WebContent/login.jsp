<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

	<%
		String ktPass = null;
		String unGV = "aa", pwGV = "aa";
		String un = request.getParameter("txtun");
		String pw = request.getParameter("txtpw");
		String vt = request.getParameter("vaitro");
		if (un != null && pw != null) {
			if (vt.equals("1") && un.equals(unGV) && pw.equals(pwGV)) {
				ktPass = "true";
			} else {
				ktPass = "false";
			}
		}
		if (ktPass != null && ktPass.equals("true")) {
			out.print("<h1>Xin chào "+ un +"</h1>");
		} else {
	%>
	
	<form action="login.jsp" method="get">
		Usename <input type="text" name="txtun"><br> Password <input
			type="password" name="txtpw"><br> vai tro <select
			name="vaitro">
			<option value="1">Giao vien</option>
			<option value="2">Sinh vien</option>
		</select><br> <input type="submit" name="btnlg" value="login"><br>
		<%
			}

			if (ktPass != null && ktPass.equals("false")) {
		%>
		<span class="text-danger">dang nhap sai</span>

		<%
			}
		%>



	</form>
</body>
</html>