package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class testcontroller
 */
@WebServlet("/testcontroller")
public class testcontroller extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Tao doi tuong out
		PrintWriter out = response.getWriter();
		out.print("Hello servlet");
		//tao session
		HttpSession session = request.getSession();
		session.setAttribute("ss", "haha");
		//tạo ra 3 biến request:
		request.setAttribute("gt1", (long)4*5);
		request.setAttribute("gt2", "Lee Min Hoo");
		String[] ds = {"Hô","Minh","Lê"};
		request.setAttribute("gt3", ds);
		//dieu huong ve trang vidu.jsp
		
		RequestDispatcher rd = request.getRequestDispatcher("vidu.jsp");
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
