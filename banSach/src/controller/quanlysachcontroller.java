package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.sachadminbean;
import bo.loaisachbo;
import bo.sachadminbo;
import bo.sachbo;

/**
 * Servlet implementation class quanlysachcontroller
 */
@WebServlet("/quanlysachcontroller")
public class quanlysachcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public quanlysachcontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		sachadminbo sbo = new sachadminbo();
		loaisachbo lbo = new loaisachbo();
		try {

			//
			if (request.getParameter("maSachXoa") != null) {
				int n = 0;
				n = sbo.xoaSach(request.getParameter("maSachXoa"));
				if (n == 0) {
					request.setAttribute("ktXoaSach", 0);
				}
			}
			if (request.getParameter("maSachChon") != null) {
				String ss = request.getParameter("maSachChon");
				request.setAttribute("sachChon", sbo.timSachyTheoMa(ss));

			}
			// file
//			DiskFileItemFactory factory = new DiskFileItemFactory();
//			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
//			ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
//
//			String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "files";
//			List<FileItem> fileItems = upload.parseRequest(request);// Lấy về các đối tượng gửi lên
//
//			// duyệt qua các đối tượng gửi lên từ client gồm file và các control
//			for (FileItem fileItem : fileItems) {
//				if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
//					// xử lý file
//					String nameimg = fileItem.getName();
//					if (!nameimg.equals("")) {
//						// Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
//						String dirUrl = request.getServletContext().getRealPath("uploads");
//						File dir = new File(dirUrl);
//						if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
//							dir.mkdir();
//						}
//						fileImg = dirUrl + File.separator + nameimg;
//						File file = new File(fileImg);// tạo file
//						anh = "uploads/" + file.getName();
//						try {
//							fileItem.write(file);// lưu file
//
//						} catch (Exception e) {
//							e.printStackTrace();
//						}
//					}
//
//				} else {
//					String tentk = fileItem.getFieldName();
//					if (tentk.equals("action")) {
//						
//					}
//			
//					
//				}
//
//			}
			if (request.getParameter("btnThem") != null) {
				String txtMaSach = request.getParameter("txtMaSach");
				String txtTebSach = request.getParameter("txtTebSach");
				String txtTacGia = request.getParameter("txtTacGia");
				String txtGia = request.getParameter("txtGia");
				String txtSoLuong = request.getParameter("txtSoLuong");
				String txtNgayNhap = request.getParameter("txtNgayNhap");
				String txtAnh = request.getParameter("txtAnh");
				String txtSoTap = request.getParameter("txtSoTap");
				String maloai = request.getParameter("maLoai");
				Long gia = Long.parseLong(txtGia);
				Long soluong = Long.parseLong(txtSoLuong);
				Date ngaynhap = new SimpleDateFormat("yyyy-MM-dd").parse(txtNgayNhap);
				int n = 0;
				sachadminbean sach = new sachadminbean(txtMaSach, txtTebSach, soluong, txtTacGia, gia, txtAnh, ngaynhap,
						maloai, txtSoTap);
				n = sbo.themSach(sach);
				if (n == 0) {
					request.setAttribute("ktThemSach", 0);
				}
			}
			if (request.getParameter("btnSua") != null) {
				String txtMaSach = request.getParameter("txtMaSach");
				String txtTebSach = request.getParameter("txtTebSach");
				String txtTacGia = request.getParameter("txtTacGia");
				String txtGia = request.getParameter("txtGia");
				String txtSoLuong = request.getParameter("txtSoLuong");
				String txtNgayNhap = request.getParameter("txtNgayNhap");
				String txtAnh = request.getParameter("txtAnh");
				String txtSoTap = request.getParameter("txtSoTap");
				String maloai = request.getParameter("maLoai");
				Long gia = Long.parseLong(txtGia);
				Long soluong = Long.parseLong(txtSoLuong);
				Date ngaynhap = new SimpleDateFormat("yyyy-MM-dd").parse(txtNgayNhap);
				int n = 0;
				sachadminbean sach = new sachadminbean(txtMaSach, txtTebSach, soluong, txtTacGia, gia, txtAnh, ngaynhap,
						maloai, txtSoTap);
				n = sbo.suaSach(sach);
				request.setAttribute("sachChon", sbo.timSachyTheoMa(txtMaSach));
				if (n == 0) {
					request.setAttribute("ktSuaSach", 0);
				}
			}
			//
			request.setAttribute("lsSach", sbo.getsach());
			request.setAttribute("lsLoai", lbo.getloai());
			RequestDispatcher rd = request.getRequestDispatcher("admin/sach.jsp");
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
