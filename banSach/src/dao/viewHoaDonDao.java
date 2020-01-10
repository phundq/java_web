package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.hoadonbean;
import bean.viewHoaDon;

public class viewHoaDonDao {
	public ArrayList<viewHoaDon> getAllHoadon() throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		String sql = "select * from ViewHoaDon";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		viewHoaDon hd = null;
		ArrayList<viewHoaDon> dshd = new ArrayList<viewHoaDon>();
		while (rs.next()) {
			long maHoaDon = rs.getLong("MaHoaDon");
			String hoTen = rs.getString("hoten");
			long tongSL = rs.getLong("tongsl");
			long tongTien = rs.getLong("tongtien");
			Date ngayMua = rs.getDate("NgayMua");
			boolean daMua = rs.getBoolean("damua");
			hd = new viewHoaDon(maHoaDon, hoTen, tongSL, tongTien, ngayMua, daMua);
			dshd.add(hd);
		}
		rs.close();
		dc.cn.close();

		return dshd;
	}

}
