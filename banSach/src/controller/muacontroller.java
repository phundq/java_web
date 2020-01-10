package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.giohangbo;

/**
 * Servlet implementation class muacontroller
 */
@WebServlet("/muacontroller")
public class muacontroller extends HttpServlet {

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public muacontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setAttribute("kt", null);
		String masach = request.getParameter("ms");
		String tensach = request.getParameter("ts");
		String tacgia = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		//
		//
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
			RequestDispatcher rd = request.getRequestDispatcher("giohangcontroller");
			rd.forward(request, response);

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
