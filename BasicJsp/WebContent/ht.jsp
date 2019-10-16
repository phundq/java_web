<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String ts= request.getParameter("k");
	if(ts.equals("ts"))
		out.print("ht trang thoi su");
	else
		if(ts.equals("qt"))
				out.print("ht trang quoc te");
		else
			if(ts.equals("tt"))
					out.print("ht trang the thao");
 %>

</body>
</html>