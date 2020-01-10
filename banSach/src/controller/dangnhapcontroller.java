package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.khachhangbo;

/**
 * Servlet implementation class dangnhapcontroller
 */
@WebServlet("/dangnhapcontroller")
public class dangnhapcontroller extends HttpServlet {

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dangnhapcontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		khachhangbo kHBO = new khachhangbo();
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String txtun = request.getParameter("txtun");
		String txtpw = request.getParameter("txtpw");
		String kt = request.getParameter("btn");
		if (kt != null && txtun.equals("admin") && txtpw.equals("123")) {
			session.setAttribute("un", "Admin");
			RequestDispatcher rd = request.getRequestDispatcher("admincontroller");
			rd.forward(request, response);
		} else {
			try {
				if (kHBO.checkLogin(txtun, txtpw) != null) {
					session.setAttribute("un", kHBO.checkLogin(txtun, txtpw));
					RequestDispatcher rd = request.getRequestDispatcher("giohangcontroller");
					rd.forward(request, response);
				} else {
					RequestDispatcher rd = request.getRequestDispatcher("sachdata/dangnhap.jsp");
					rd.forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
