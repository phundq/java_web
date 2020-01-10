package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class giohangcontroller
 */
@WebServlet("/giohangcontroller")
public class giohangcontroller extends HttpServlet {
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//
		String slSua = request.getParameter("numsl");
		String ms2 = request.getParameter("ms2");
		String action = request.getParameter("action");
		String[] chbXoa = request.getParameterValues("chbXoa");		
		//
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
			} 
			else{session.setAttribute("kt", 5);}//nhập số lượng không đúng
		}
		//xóa
			if (action != null && action.equals("xoa")) {
				int kt = 1;
				//kt=gh.xoa(ms2,sl);
				kt = gh.xoaMotHang(ms2);
				session.setAttribute("kt", kt);
				session.setAttribute("gh", gh);

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
				

			} 
		//
		RequestDispatcher rd = request.getRequestDispatcher("sachdata/giohang.jsp");
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
