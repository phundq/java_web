<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="600px" border="1" rules="all">
		<tr>
			<td width="100px" style="padding: 10px;">
				<%
					loaibo Bo = new loaibo();
					for (loaibean l : Bo.getLoai()) {
						out.print(
								"<a href='Hienthi.jsp?ma=" + l.getMaloai() + "&ten=" + l.getTenloai() + "'>" + l.getTenloai());
						out.print("</a><br>");
					}
				%>
			</td>
			<td style="padding: 10px; bottom: auto;">
				<%
					String ten = request.getParameter("ten");

					for (loaibean l : Bo.getLoai()) {
						int i = 1;
						if (ten.equals(l.tenloai)) {
							out.print("<i>mã loại:</i><b> " + l.getMaloai() + "</b> &emsp;<i>tên loại:</i><b> " + l.getTenloai()
									+ "</b><br><hr><i>Danh sách các sách hiện có</i>: <br><b> ");
							for (String s : l.getDssach()) {
								if (i % 3 == 0)
									out.print(s + " </b><br><b>");
								else
									out.print(s + " </b><b>");
								i++;
							}
						}
					}
				%>
			</td>
		</tr>

	</table>



</body>
</html>