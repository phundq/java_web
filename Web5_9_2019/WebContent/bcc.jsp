
<%@page import="java.util.Random"%>
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
		Random r = new Random();
		int n = r.nextInt(100);
	%>

	<table>
		<tr>
			<td>
				<%
					for (int i = 1; i <= n; i++) {
				%> <a href="bcc.jsp?so=<%=i%>"><%=i%></a> <%
 	}
 %>


			</td>
			<td></td>

		</tr>


	</table>
	<%
		String ts = request.getParameter("so");
		if (ts == null)
			out.print("mời chọn 1 số....");
		else {
			int so = Integer.valueOf(ts);

			for (int k = 1; k <= 10; k++) {
				out.print(so + " x " + k + " = " + so * k + "<br>");
			}
		}
	%>

</body>
</html>