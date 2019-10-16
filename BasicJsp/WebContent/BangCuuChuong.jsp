<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bảng cửu chương</title>
<link rel="shortcut icon" href="https://cdn1.iconfinder.com/data/icons/banking-and-finance-2-4/128/89-512.png">
<style type="text/css">
	table {
	border: white;
	}

	td, th {
		padding: 5px;
		background: #105796;
		color: white;
	}
</style>

</head>
<body>
	<h3 style="margin-left: 261px;">BẢNG CỬU CHƯƠNG</h3>
	<table border="1" rules="all">
		<tr>
			<th style="background: #d4631e; color: white;">0</th>
			<%
				for (int h = 1; h <= 9; h++) {
			%>
			<th style="background: #09267b; color: white;"><%=h%></th>
			<%
				}
			%>
		</tr>
		<%
			for (int i = 1; i <= 9; i++) {
		%>
		<tr style="text-align: left;">
			<td
				style="font-weight: bold; text-align: center; width: 33px; background: #09267b; color: white;")><%=i%></td>
			<%
				for (int j = 1; j <= 9; j++) {%>
					<td <%=((i==j)?" style='background: #d4631e;'":"") %>><%=i %> x <%=j %> = <%=i*j %></td>
					<%}%>
		</tr>


		<%
			}
		%>


	</table>
</body>
</html>