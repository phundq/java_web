<%@page import="java.util.ArrayList"%>
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

		<%
					sachbo sach = new sachbo();
					ArrayList<sachbean>  ds = sach.getsach();
					int ss = ds.size();
					for(int i= 0; i<ss; i++){
						sachbean s= ds.get(i);
 				%>
		<tr>
			<td>
				<img alt="" src='<%=s.getAnh() %>'><br>
				<%=s.getTensach() %><br>
				<%=s.getTacgia() %><br>
				<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img alt="" src="mua.jpg"></a>
			</td>
			<td>
				<%i++;
					if(i<ss){
						s=ds.get(i);
					
				%>
				<img alt="" src='<%=s.getAnh() %>'><br>
				<%=s.getTensach()%><br>
				<%=s.getTacgia() %><br>
				<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"><img alt="" src="mua.jpg"></a>
			</td>
			<%} %>
		</tr>
		<%} %>
	</table>
</body>
</html>