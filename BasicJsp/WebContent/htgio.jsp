<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" rules="all" width="800">
<%
	if(session.getAttribute("gh")!=null){
		
		giohangbo gh=(giohangbo)session.getAttribute("gh");
		for(giohangbean g: gh.ds){%>
			<tr>
			<td><%=g.getTenSach() %></td>
			<td><%=g.getTacGia() %></td>
			<td><%=g.getTacGia() %></td>
			<td><%=g.getSoLuong() %></td>
			<td><%=g.getThanhTien() %></td>
			
			</tr>
			

<div align="right">Tong: <%=gh.tongTien() %></div>			
			
			
		<%}
		
	}else{
		
	}
%>
</table>
</body>
</html>