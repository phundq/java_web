package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import bean.loaisachbean;
import bean.sachbean;

public class loaisachdao {
	dungchung dc = new dungchung();

	public ArrayList<loaisachbean> getloai() throws Exception {
		ArrayList<loaisachbean> ds = new ArrayList<loaisachbean>();
//		ds.add(new sachbean("s1", "Trải nghiệm,khát vọng CS", "Trần A", (long)65000, "b1.jpg"));
//		ds.add(new sachbean("s2", "Bí mật của may mắn", "Nguyễn Văn B", (long)66000, "b2.jpg"));
//		ds.add(new sachbean("s3", "Chắp cánh tuổi thơ", "Lê Long", (long)67000, "b3.jpg"));
//		ds.add(new sachbean("s4", "Hạt giống yêu thương", "Minh Tâm", (long)68000, "b4.jpg"));
//		ds.add(new sachbean("s5", "Giá trị cuộc sống", "Minh Nhật", (long)69000, "b5.jpg"));
//		ds.add(new sachbean("s6", "Hãy yêu cuốc sống bạn chọn", "Hà Như", (long)70000, "b6.jpg"));
//		ds.add(new sachbean("s7", "Quà tặng cuộc sống", "Nguyễn Minh Trí", (long)71000, "b7.jpg"));
//		ds.add(new sachbean("s8", "Quà tặng tinh thần dành cho phụ nữ", "Mỹ Mỹ", (long)72000, "b8.jpg"));
		// b1: kết nối csdl qlsach
		dc.ketNoi();
		// b2: lấy dl
		String query = "Select * from loai";
		PreparedStatement statement = dc.cn.prepareStatement(query);
		ResultSet rs = statement.executeQuery();
		while (rs.next()) {

			loaisachbean loai = new loaisachbean(rs.getString("maloai"), rs.getString("tenloai"));
			ds.add(loai);
		}
		// b3: đóng kn
		rs.close();
		dc.cn.close();

		return ds;
	}

	boolean ktTrungMa(String ma) throws Exception {
		String sql = "select maloai from loai where maloai=?";
		dc.ketNoi();
		PreparedStatement pst = dc.cn.prepareStatement(sql);
		pst.setString(1, ma);
		ResultSet rs = pst.executeQuery();
		Boolean kq = rs.next();
		pst.close();
		rs.close();
		return kq;

	}

	boolean ktLoaiCoSach(String ma) throws Exception {
		dc.ketNoi();
		String sql = "select maloai from sach where maloai = ?";
		PreparedStatement ps = dc.cn.prepareStatement(sql);
		ps.setString(1, ma);
		ResultSet rs = ps.executeQuery();
		boolean kt = rs.next();
		rs.close();
		return kt;
	}

	public int themLoai(String ma, String ten) throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		if (ktTrungMa(ma)) {
			return 0;
		}
		String sql = "insert into loai(maloai,tenloai) values(?,?)";
		PreparedStatement ps = dc.cn.prepareStatement(sql);
		ps.setString(1, ma);
		ps.setString(2, ten);
		int rs = ps.executeUpdate();
		// ps.close();
		dc.cn.close();
		return rs;
	}

	public int suaLoai(String ma, String ten) throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		String sql = "update loai set tenloai=? where maloai=?";
		PreparedStatement pt = dc.cn.prepareStatement(sql);
		pt.setString(1, ten);
		pt.setString(2, ma);
		int rs = pt.executeUpdate();
//		pt.close();
		dc.cn.close();
		return rs;
	}

	public int xoaLoai(String ma) throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		if (ktLoaiCoSach(ma)) {
			return 0;
		}
		String sql = "delete from loai where maloai =?";
		PreparedStatement ps = dc.cn.prepareStatement(sql);
		ps.setString(1, ma);
		int rs = ps.executeUpdate();
//		ps.close();
		dc.cn.close();
		return rs; // so dong thuc hien dc
	}

}
