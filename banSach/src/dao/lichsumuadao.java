package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.lichsumuabean;

public class lichsumuadao {
	public ArrayList<lichsumuabean> getLichSuMua(long maKH) throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		ArrayList<lichsumuabean> ds = new ArrayList<lichsumuabean>();
		String sql = "select * from ViewLichSuMua where makh = ?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setLong(1, maKH);
		ResultSet rs = cmd.executeQuery();
		lichsumuabean ls = null;
		while (rs.next()) {
			long makh1 = rs.getLong("makh");
			long maHD = rs.getLong("MaHoaDon");
			Date ngayMua = rs.getDate("NgayMua");
			boolean daMua = rs.getBoolean("damua");
			String maSach = rs.getString("MaSach");
			Long sLMua = rs.getLong("SoLuongMua");
			String tenSach = rs.getString("TenSach");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			ls = new lichsumuabean(makh1, maHD, ngayMua, daMua, maSach, sLMua, tenSach, anh, gia);
			ds.add(ls);
		}
		rs.close();
		dc.cn.close();
		return ds;

	}
}
