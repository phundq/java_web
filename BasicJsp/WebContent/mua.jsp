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
if(giatam!=null){
	long gia = Long.parseLong(giatam);
	giohangbo gh= null;
	if(session.getAttribute("gh")==null){
		gh = new giohangbo();
		session.setAttribute("gh",gh);
	}
		gh = (giohangbo)session.getAttribute("gh");
		int kt=0;
		for(giohangbean g:gh.ds){
			if(g.getMaSach().equals(masach)){
				kt=1;
			}
		}
		if(kt==1){
			gh.sua(masach, 1);
		} else{
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
if(slSua!=null && action!=null){
if(slSua!=null && !slSua.equals("") && action!=null){
	long sl=Long.parseLong(slSua);
	giohangbo gh= (giohangbo)session.getAttribute("gh");
	if(action.equals("them")){
		if(sl<1){
			session.setAttribute("kt", 0);
		}else{
			gh.sua(ms2, sl);
			session.setAttribute("kt", 1);
		}
		
		
	}
	if(action.equals("xoa")){
		int kt=1;
		kt=gh.xoa(ms2,sl);
		session.setAttribute("kt", kt);
		
	}
	session.setAttribute("gh", gh);
	response.sendRedirect("sstrang2.jsp");
	
}else{
	session.setAttribute("kt", 5);
	response.sendRedirect("sstrang2.jsp");
}
}

%>

</body>
</html>