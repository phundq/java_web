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
		String aa = request.getParameter("txta");
		String bb = request.getParameter("txtb");
		String nut = request.getParameter("but");
		long a, b, kq = 0;
		out.print(aa + "<hr>" + bb + "<hr>" + nut + "<hr>");
		if (aa != null && bb != null) {
			a = Long.parseLong(aa);
			b = Long.parseLong(bb);
			if (nut.equals("%2B")) {
				kq = a + b;
			}
			if (nut.equals("-")) {
				kq = a - b;
			}
			if (nut.equals("*")) {
				kq = a * b;
			}
			if (nut.equals("/")) {
				if (b == 0)
					out.print("<script >alert('ko thuc hien duoc')</script>");
				else {
					kq = a / b;

				}

			}

			out.print(a + nut + b + "=" + kq + "<hr>");

		}
	%>
	
</body>
</html>