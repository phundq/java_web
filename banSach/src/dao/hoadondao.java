package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import bean.giohangbean;
import bean.hoadonbean;
import bean.khachhangbean;
import bo.giohangbo;

public class hoadondao {
	public long addHoaDon(long idUser, giohangbo gh) throws Exception {
		long maHoaDon = 0;
		dungchung dc = new dungchung();
		dc.ketNoi();
		//tạo mã hđ:
		String sql1 = "select max(MaHoaDon) from hoadon";
		PreparedStatement cmd = dc.cn.prepareStatement(sql1);
		ResultSet rs = cmd.executeQuery();
		khachhangbean kh = null;
		while(rs.next()) {
			maHoaDon =  rs.getLong(1) +1;
		}
		rs.close();
		// chen hoa don
		String sql2 = "INSERT INTO hoadon(MaHoaDon,makh,NgayMua,damua) VALUES (?,?,?,?)";
		PreparedStatement cmd1 = dc.cn.prepareStatement(sql2);
		cmd1.setLong(1, maHoaDon);
		cmd1.setLong(2, idUser);
		cmd1.setDate(3, java.sql.Date.valueOf(java.time.LocalDate.now()));
		cmd1.setBoolean(4, false);
		cmd1.executeUpdate();

		// chen chi tiet
		for (giohangbean g : gh.ds) {
			String sql3 = "INSERT INTO ChiTietHoaDon(MaSach,SoLuongMua,MaHoaDon) VALUES (?,?,?)";
			PreparedStatement cmd2 = dc.cn.prepareStatement(sql3);
			cmd2.setString(1, g.getMaSach());
			cmd2.setLong(2, g.getSoLuong());
			cmd2.setLong(3, maHoaDon);
			cmd2.executeUpdate();
		}
		dc.cn.close();
		return maHoaDon;
	}

	public ArrayList<hoadonbean> getHoadon(long makh) throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		String sql = "select * from hoadon where makh = ?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		hoadonbean hd = null;
		ArrayList<hoadonbean> dshd = new ArrayList<hoadonbean>();
		while (rs.next()) {
			long MaHoaDon = rs.getLong("MaHoaDon");
			long makh1 = rs.getLong("makh");
			Date ngayMua = rs.getDate("NgayMua");
			boolean damua = rs.getBoolean("damua");
			hd = new hoadonbean(MaHoaDon, makh1, ngayMua, damua);
			dshd.add(hd);
		}
		rs.close();
		dc.cn.close();

		return dshd;
	}
	public ArrayList<hoadonbean> getAllHoadon() throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		String sql = "select * from hoadon";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		hoadonbean hd = null;
		ArrayList<hoadonbean> dshd = new ArrayList<hoadonbean>();
		while (rs.next()) {
			long MaHoaDon = rs.getLong("MaHoaDon");
			long makh1 = rs.getLong("makh");
			Date ngayMua = rs.getDate("NgayMua");
			boolean damua = rs.getBoolean("damua");
			hd = new hoadonbean(MaHoaDon, makh1, ngayMua, damua);
			dshd.add(hd);
		}
		rs.close();
		dc.cn.close();

		return dshd;
	}

	public int updateHoaDon(String mahd) throws Exception {

		dungchung dc = new dungchung();
		dc.ketNoi();
		String sql = "update hoadon set damua = ? where MaHoaDon = ?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setBoolean(1, true);
		cmd.setString(2, mahd);
		int rs = cmd.executeUpdate();
		dc.cn.close();

		return rs;

	}

}
