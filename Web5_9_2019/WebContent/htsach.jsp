<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="left" width="1000px">
		<tr>
			<td>
				<%
					sachbo sach = new sachbo();
					for (sachbean s : sach.getsach()) {
				%> <a
				href="htsach.jsp?ma=<%=s.getMasach()%>&ten=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
					<%=s.getTensach()%>
			</a>
			<hr> <%
 	}
 %>
			</td>
			<td >
				<%
					String ma = request.getParameter("ma");
					String ten = request.getParameter("ten");
					String tg = request.getParameter("tg");
					String gia = request.getParameter("gia");
					String anh = request.getParameter("anh");

					if (ma == null)
						out.print("mời chọn 1 đầu sách.....");
					else {
						out.print(ma + "<br>");
						out.print(ten + "<br>");
						out.print(tg + "<br>");
						out.print(gia + "<br>");
						out.print("<img src='" + anh + "'> <br>");

					}
				%>


			</td>
		</tr>
	</table>
</body>
</html>