<%@page import="java.util.Calendar"%>
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
		Calendar c= Calendar.getInstance();
		int ngay= c.get(Calendar.DAY_OF_MONTH);
		int thang = c.get(Calendar.MONTH)+1;
		int nam =c.get(Calendar.YEAR);
	%>
	<div align="right">
		Hom nay , ngay <%=ngay %>, thang <%=thang %>, nam <%=nam %> <hr>
	</div>
	chon ngay:
	<select>
		<%for (int i=1; i<=31;i++){%>
		<option<%=((i==ngay)?" selected":"") %>><%=i %></option>
		<%} %>
	</select>
	chon thang:
	<select>
		<%for (int i=1; i<=12;i++){ 
		if(i==thang) out.print("<option selected>"+i+"</option>");
		else{%>
		<option><%=i %></option>
		<%}} %>
	</select>
	chon nam:
	<select>
		<%for (int i=nam-5; i<=nam+5;i++){ 
		if(i==nam) out.print("<option selected>"+i+"</option>");
		else{%>
		<option><%=i %></option>
		<%}} %>
	</select>
	
	














</body>
</html>