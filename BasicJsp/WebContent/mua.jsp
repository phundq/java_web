<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
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
		session.setAttribute("kt", null);
		String masach = request.getParameter("ms");
		String tensach = request.getParameter("ts");
		String tacgia = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		//
		String slSua = request.getParameter("numsl");
		String ms2 = request.getParameter("ms2");
		String action = request.getParameter("action");
		String[] chbXoa = request.getParameterValues("chbXoa");
		
		
		if (giatam != null) {
			long gia = Long.parseLong(giatam);
			giohangbo gh = null;
			if (session.getAttribute("gh") == null) {
				gh = new giohangbo();
				session.setAttribute("gh", gh);
			}
			gh = (giohangbo) session.getAttribute("gh");
			int kt = 0;
			for (giohangbean g : gh.ds) {
				if (g.getMaSach().equals(masach)) {
					kt = 1;
				}
			}
			if (kt == 1) {
				gh.sua(masach, 1);
			} else {
				gh.them(masach, tensach, gia, tacgia, 1);
			}

			session.setAttribute("gh", gh);
			if (session.getAttribute("un") == null) {
				session.setAttribute("page", "sstrang2.jsp");
				response.sendRedirect("ssdangnhap.jsp");
			}
			//
			else
				response.sendRedirect("sstrang2.jsp");
		}
		giohangbo gh = (giohangbo) session.getAttribute("gh");
		//sự kiện cho action:
		//thêm số lượng
		if (slSua != null && action != null) {		
			if (slSua != null && !slSua.equals("") && action != null) {//nhập số lượng đúng
				long sl = Long.parseLong(slSua);
				if (action.equals("them")) {
					if (sl < 1) {
						session.setAttribute("kt", 0);
					} else {
						gh.sua(ms2, sl);
						session.setAttribute("kt", 1);
					}

				}

			} else{session.setAttribute("kt", 5);}//nhập số lượng không đúng
			response.sendRedirect("sstrang2.jsp");
			
		}
		//xóa
			if (action != null && action.equals("xoa")) {
				int kt = 1;
				//kt=gh.xoa(ms2,sl);
				kt = gh.xoaMotHang(ms2);
				session.setAttribute("kt", kt);
				session.setAttribute("gh", gh);
				response.sendRedirect("sstrang2.jsp");

			}
		//xóa checkbox
			if (chbXoa!=null&&action != null && action.equals("xoaCheckbox")) {
				int kt = 1;
				//kt=gh.xoa(ms2,sl);
				for(String cb:chbXoa){
					kt = gh.xoaMotHang(cb);
				}
				
				session.setAttribute("kt", kt);
				session.setAttribute("gh", gh);
				response.sendRedirect("sstrang2.jsp");

			} 
			if (chbXoa==null&&action != null && action.equals("xoaCheckbox")){
				response.sendRedirect("sstrang2.jsp");
			}
			
			
		
	%>

</body>
</html>