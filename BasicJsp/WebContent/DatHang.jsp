<%@page import="Tam.CGioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Document</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row pl-3">
			<form class="form-group" method='post' action='DatHang.jsp'>
				Tên hàng <br>
				<input type='text' name='txtth'><br> Giá<br> <input
					type='text' name='txtgia'><br> Số lượng<br> <input
					type='text' name='txtsl'><br> <input type='submit' class="btn-info mt-1 rounded"
					name='un1' value='Đặt Hàng'>
			</form>
		</div>
	</div>
	
			<%	int soForm=0;
				String th = request.getParameter("txtth");
				String gia = request.getParameter("txtgia");
				String sl = request.getParameter("txtsl");
				if (th != null && gia != null && sl != null) {
					CGioHang g = new CGioHang();
					//Neu mua hang lan dau
					if (session.getAttribute("gh") == null) {
						session.setAttribute("gh", g);//Tao gio
					}
					//Gian session: gh vao bien: g
					g = (CGioHang) session.getAttribute("gh");
					//Them hang vao bien: g
					g.Them(th, Integer.parseInt(gia), Integer.parseInt(sl));
					//Luu bien vao session
					session.setAttribute("gh", g);
				}
				//Hien thi do trong session: gh
				if (session.getAttribute("gh") != null) {
					CGioHang g = new CGioHang();
					g = (CGioHang) session.getAttribute("gh");
					int sh = g.ds.size();
					soForm=sh;
			%>
<div class="container-fluid">
		<div class="">
			<h5 class="text-center">Giỏ hàng</h5>
			<table class="table table-striped" width='100%'>
				<thead class="thead-dark">
					<tr>
						<th class="pl-3">Tên hàng</th>
						<th class="pl-3">Giá</th>
						<th class="pl-3">Số lượng</th>
						<th colspan="2" class="pl-3">Thành tiền</th>
					</tr>
				</thead>
				<%
					for (int i = 0; i < sh; i++) {
				%>
				<form name="form<%=i %>" method='get' action='Sua.jsp'>
				<input type="hidden" name="th" value="<%=g.ds.get(i).getTenhang()%>">
				<tr>
					<td class="pl-3"><%=g.ds.get(i).getTenhang()%></td>
					<td class="pl-3"><%=g.ds.get(i).getGia()%></td>
					<td class=""><span class="text-center"
						style="width: 45px; display: inline-block;"><%=g.ds.get(i).getSoluong()%></span>
						<div style="display: inline-block;" >
							<input type='text' name='txtsua'> 
							<input type='submit' class="btn-info rounded"name='action' value='Sua'>
						</div></td>
					<td class="pl-3"><%=g.ds.get(i).getThanhtien()%></td>
					<td class="text-right">					
							<input type="checkbox" name="chbXoa" value="<%=g.ds.get(i).getTenhang()%>">	
							<input type="submit" class="btn-warning rounded ml-5" name="action" value="Xoa">	
							
					</td>
				</tr>
				
				</form>
				<%
					}
				%>
				
			</table>
			
			<div align='right'>
				
					Tổng tiền:
					<%=g.Tongtien()%>
				
				<button type="submit" class="btn-warning rounded my-2 d-block" name="action" onclick="submitForms()" value="XoaChecbox">Xóa Mục đã chọn</button>
				<form action="Sua.jsp">
				<button type="submit" name="action" value="XoaTatCa" class="btn-danger rounded">Xóa tất cả</button>
				</form>
			</div>
		</div>
	</div>
	<script>
        submitForms = function() {
	<%for(int i=0;i<soForm;i++){ %>
            document.forms["form<%=i%>"].submit();
	<%}%>
	return true;
        }
    </script>
	<%}%>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>