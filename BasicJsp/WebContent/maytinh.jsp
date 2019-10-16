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
		if (aa != null && bb != null) {
			a = Long.parseLong(aa);
			b = Long.parseLong(bb);
			if (nut.equals("+")) {
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


		}
	%>

	<form action="maytinh.jsp" method="post">
		a= 
		<input type="number" name="txta" value='<%=(aa==null?"":aa)%>'><br>
		b= 
		<input type="number" name="txtb" value='<%=(bb==null?"":bb)%>'><br>
		kq= 
		<input type="number" name="txtkq" value='<%=kq%>'><br>
		
		<input type="submit" name="but" value='+'>
		<input type="submit" name="but" value='-'>
		<input type="submit" name="but" value='*'>
		<input type="submit" name="but" value='/'>
	</form>

</body>
</html>