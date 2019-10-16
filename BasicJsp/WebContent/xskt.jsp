<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xổ số Kiến thiết TT-Huế</title>
<link rel="shortcut icon" href="https://xoso.com.vn/favicon.ico">
<style type="text/css">
table {
	border: 1px solid black;
}

td, th {
	padding: 10px 20px;
	line-height: 1.8;
}
</style>

</head>
<body>
	<%!Random r = new Random();

	String soHaiChuSo() {
		int num = r.nextInt(100);
		String s = (num < 10) ? "0" : "";
		s += Integer.toString(num);
		return s;
	}

	String soBaChuSo() {
		int num = r.nextInt(1000);
		String s = (num < 10) ? "00" : (num < 100) ? "0" : "";
		s += Integer.toString(num);
		return s;
	}

	String soBonChuSo() {
		int num = r.nextInt(10000);
		String s = (num < 10) ? "000" : (num < 100) ? "00" : (num < 1000) ? "0" : "";
		s += Integer.toString(num);
		return s;
	}

	String soNamChuSo() {
		int num = r.nextInt(100000);
		String s = (num < 10) ? "0000" : (num < 100) ? "000" : (num < 1000) ? "00" : (num < 10000) ? "0" : "";
		s += Integer.toString(num);
		return s;
	}

	String soSauChuSo() {
		int num = r.nextInt(1000000);
		String s = (num < 10) ? "00000"
				: (num < 100) ? "0000" : (num < 1000) ? "000" : (num < 10000) ? "00" : (num < 100000) ? "0" : "";
		s += Integer.toString(num);
		return s;
	}%>
		<table rules="all">
			<tr>
				<td colspan="2" align="center" width="500px">KẾT QUẢ XỔ SÔ
					TT-HUẾ HÔM NAY</td>
			</tr>
			<tr>
				<td>Giải 8</td>
				<td align="center"><%=soHaiChuSo()%></td>
			</tr>
			<tr>
				<td>Giải 7</td>
				<td align="center"><%=soBaChuSo()%></td>
			</tr>
			<tr>
				<td>Giải 6</td>
				<td align="center"><%=soBonChuSo()%> &emsp;&emsp; <%=soBonChuSo()%>
					&emsp;&emsp; <%=soBonChuSo()%></td>
			</tr>
			<tr>
				<td>Giải 5</td>
				<td align="center"><%=soBonChuSo()%></td>
			</tr>
			<tr>
				<td>Giải 4</td>
				<td align="center"><%=soNamChuSo()%> &emsp;&emsp; <%=soNamChuSo()%>
					&emsp;&emsp; <%=soNamChuSo()%><br> <%=soNamChuSo()%>
					&emsp;&emsp; <%=soNamChuSo()%> &emsp;&emsp; <%=soNamChuSo()%><br>
					<%=soNamChuSo()%></td>
			</tr>
			<tr>
				<td>Giải 3</td>
				<td align="center"><%=soNamChuSo()%> &emsp;&emsp; <%=soNamChuSo()%></td>
			</tr>
			<tr>
				<td>Giải 2</td>
				<td align="center"><%=soNamChuSo()%></td>
			</tr>
			<tr>
				<td>Giải 1</td>
				<td align="center"><%=soNamChuSo()%></td>
			</tr>
			<tr>
				<td>Giải ĐB</td>
				<td align="center"><%=soSauChuSo()%></td>
			</tr>
		</table>
</body>
</html>