<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
tr:hover {
	background: white !important;
	color: #383737;
}

tr {
	background: #f4f5f5;
	transition: all 0.6s;
}

th {
	padding: 8px;
	height: 36px;
}

a {
	line-height: 30px;
	color: black;
	transition: color 0.6s;
}

a:hover {
	text-decoration: none;
	color: #a2a1a1;
}

.pl-5 {
	padding-left: 5rem !important;
}
</style>

</head>
<body class="">
	<table class="table-hover table table-bordered text-center w-50">
		<thead class="thead-dark">
			<tr class="">
				<th>Loại Sách</th>
				<th>Danh sách Sách Hiện Có</th>
			</tr>
		</thead>
		<tr>
			<td class=" font-weight-bold py-2" width="100px">
				<%
					loaibo Bo = new loaibo();
					for (loaibean l : Bo.getLoai()) {
						out.print(
								"<a href='hienthiloaisach.jsp?ma=" + l.getMaloai() + "&ten=" + l.getTenloai() + "'>" + l.getTenloai());
						out.print("</a><br>");
					}
				%>
			</td>
			<td class="text-left pl-5 font-weight-bold">
				<%
					String ten = request.getParameter("ten");
					if (ten == null)
						out.print("mời chọn tên 1 loại sách.....");
					else {
						for (loaibean l : Bo.getLoai()) {
							if (ten.equals(l.tenloai)) {
								int i = 1;
								for (String s : l.getDssach()) {
									if (i % 3 == 0)
										out.print(s + "<br>");
									else
										out.print(s + "&emsp;&emsp;");
									i++;
								}
							}

						}
					}
				%>
			</td>
		</tr>

	</table>



</body>
</html>