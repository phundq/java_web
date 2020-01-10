package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.giohangbo;
import bo.hoadonbo;

/**
 * Servlet implementation class dathangcontroller
 */
@WebServlet("/dathangcontroller")
public class dathangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dathangcontroller() {
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
		hoadonbo hDBO = new hoadonbo();
		if (session.getAttribute("un") == null) {
			RequestDispatcher rd = request.getRequestDispatcher("dangnhapcontroller");
			rd.forward(request, response);
		} else {
			// thêm giỏ hàng:
			khachhangbean kh = (khachhangbean) session.getAttribute("un");
			giohangbo gh = (giohangbo) session.getAttribute("gh");
			if (gh != null) {
				try {
					long maHD = hDBO.addHoaDon(kh.getMakh(), gh);
					session.setAttribute("maHD", maHD);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			// hiển thị trang thông báo đặt hàng thành công
			RequestDispatcher rd = request.getRequestDispatcher("sachdata/dathang.jsp");
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
