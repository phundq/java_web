<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table align="center" width="800px">
		<tr>
			<td>
			<a href="Docbao.jsp?k=ts">tin thoi su</a> <hr>
			<a href="Docbao.jsp?k=qt">tin quoc te</a> <hr>
			<a href="Docbao.jsp?k=tt">tin te thao</a> <hr>
			</td>	
			<td>
				<% String ts= request.getParameter("k");
				if(ts==null) out.print("moi chọn 1 muc....");
				else if(ts.equals("ts"))
					out.print("ht trang thoi su");
				else
					if(ts.equals("qt"))
							out.print("ht trang quoc te");
					else
						if(ts.equals("tt"))
								out.print("ht trang the thao");
				%>
			</td>
		
		</tr>
			
	
	</table>
</body>
</html>