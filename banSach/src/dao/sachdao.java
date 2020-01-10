package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.sachbean;

public class sachdao {
	dungchung dc = new dungchung();
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
//		ds.add(new sachbean("s1", "Trải nghiệm,khát vọng CS", "Trần A", (long)65000, "b1.jpg"));
//		ds.add(new sachbean("s2", "Bí mật của may mắn", "Nguyễn Văn B", (long)66000, "b2.jpg"));
//		ds.add(new sachbean("s3", "Chắp cánh tuổi thơ", "Lê Long", (long)67000, "b3.jpg"));
//		ds.add(new sachbean("s4", "Hạt giống yêu thương", "Minh Tâm", (long)68000, "b4.jpg"));
//		ds.add(new sachbean("s5", "Giá trị cuộc sống", "Minh Nhật", (long)69000, "b5.jpg"));
//		ds.add(new sachbean("s6", "Hãy yêu cuốc sống bạn chọn", "Hà Như", (long)70000, "b6.jpg"));
//		ds.add(new sachbean("s7", "Quà tặng cuộc sống", "Nguyễn Minh Trí", (long)71000, "b7.jpg"));
//		ds.add(new sachbean("s8", "Quà tặng tinh thần dành cho phụ nữ", "Mỹ Mỹ", (long)72000, "b8.jpg"));
		//b1: kết nối csdl qlsach
		dc.ketNoi();
		//b2: lấy dl
		String query = "Select * from sach";
		PreparedStatement statement = dc.cn.prepareStatement(query);
		ResultSet rs= statement.executeQuery();        
		while (rs.next()){
			java.sql.Date datesql = rs.getDate("NgayNhap");
			Date date = new java.util.Date(datesql.getTime());
		sachbean sach = new sachbean(rs.getString("masach"), rs.getString("tensach"), rs.getString("tacgia"), rs.getLong("gia"), rs.getString("anh"), date, rs.getString("maloai"));
		ds.add(sach);
		}
		//b3: đóng kn
		rs.close();
		dc.cn.close();
		
		return ds;
	}

	public ArrayList<sachbean> timTheoLoai(String maLoai) throws Exception{
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		//b1: kết nối csdl qlsach
		dc.ketNoi();
		//b2: lấy dl
		String query = "Select * from sach where maloai=?";
		PreparedStatement statement = dc.cn.prepareStatement(query);
		statement.setString(1, maLoai);
		ResultSet rs= statement.executeQuery();        
		while (rs.next()){
			java.sql.Date datesql = rs.getDate("NgayNhap");
			Date date = new java.util.Date(datesql.getTime());
		sachbean sach = new sachbean(rs.getString("masach"), rs.getString("tensach"), rs.getString("tacgia"), rs.getLong("gia"), rs.getString("anh"), date, rs.getString("maloai"));
		ds.add(sach);
		}
		//b3: đóng kn
		rs.close();
		dc.cn.close();
		
		return ds;
	}
	public ArrayList<sachbean> timSach(String text) throws Exception{
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		//b1: kết nối csdl qlsach
		dc.ketNoi();
		//b2: lấy dl
		String query = "Select * from sach where concat(tacgia,gia,tensach) like ?";
		//String query = "Select * from sach where concat(tacgia,gia,tensach) like N'%"+text+"%'";
		PreparedStatement statement = dc.cn.prepareStatement(query);
		statement.setString(1, "%"+text+"%");
		ResultSet rs= statement.executeQuery();        
		while (rs.next()){
			java.sql.Date datesql = rs.getDate("NgayNhap");
			Date date = new java.util.Date(datesql.getTime());
		sachbean sach = new sachbean(rs.getString("masach"), rs.getString("tensach"), rs.getString("tacgia"), rs.getLong("gia"), rs.getString("anh"), date, rs.getString("maloai"));
		ds.add(sach);
		}
		//b3: đóng kn
		rs.close();
		dc.cn.close();
		
		return ds;
	}
}
