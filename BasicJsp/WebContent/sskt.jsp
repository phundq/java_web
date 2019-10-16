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
	String txtun = request.getParameter("txtun");
	if (!txtun.isEmpty()) {		
		session.setAttribute("un", txtun);
		response.sendRedirect(session.getAttribute("page").toString());
	}else{
		out.print("<script>alert('dang nhap sai')</script>");
	}
	%>
</body>
</html>