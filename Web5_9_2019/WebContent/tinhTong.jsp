<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String txtn = request.getParameter("txtn");
		int s = 0;

		//kt session:
		if (session.getAttribute("ss") == null)
			// KHOI TAO SESSION
			session.setAttribute("ss", 0);

		if (txtn != null) {
			int n = Integer.parseInt(txtn);
			s = (int) session.getAttribute("ss");
			s += n;
			session.setAttribute("ss", s);
			out.print(session.getAttribute("ss"));
		}
	%>

</body>
</html>