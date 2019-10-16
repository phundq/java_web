<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String unGV="aa",pwGV="aa";
	String un = request.getParameter("txtun");
	String pw = request.getParameter("txtpw");
	String vt = request.getParameter("vaitro");
	out.print("usename: "+un+"<br>");
	out.print("usename: "+pw+"<br>");
	
	if(vt.equals("1") &&un.equals(unGV)&&pw.equals(pwGV)){
		out.print("vaitro: Giao vien<br>");
		response.sendRedirect("login.jsp?pw=true");
	
	}
	else{
		response.sendRedirect("login.jsp?pw=false");

	}
	//if(vt.equals("2")){out.print("vaitro: Sinhvien <br>");}
	
	
%>

</body>
</html>