package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.loaisachbo;

/**
 * Servlet implementation class loaisachcontroller
 */
@WebServlet("/loaisachcontroller")
public class loaisachcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loaisachcontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// viet code ve loaisach o day:
		loaisachbo lbo = new loaisachbo();
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String txtMaLoai = request.getParameter("txtMaLoai");
			String txtTenLoai = request.getParameter("txtTenLoai");
			if (request.getParameter("btnThem") != null) {
				int n = lbo.themLoai(txtMaLoai, txtTenLoai);
				if(n== 0) request.setAttribute("ktThem", 0);
			}
			if (request.getParameter("btnSua") != null) {
				int n = lbo.suaLoai(txtMaLoai, txtTenLoai);
				if(n== 0) request.setAttribute("ktSua", 0);
			}
			if (request.getParameter("btnXoa") != null) {
				int n = lbo.xoaLoai(txtMaLoai);
				if(n== 0) request.setAttribute("ktXoa", 0);
			}

			request.setAttribute("lsLoai", lbo.getloai());
			RequestDispatcher rd = request.getRequestDispatcher("admin/loaisach.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
