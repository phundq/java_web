package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.khachhangbean;

public class khachhangdao {

	public khachhangbean checkLogin(String un, String pw) throws Exception {
		dungchung dc = new dungchung();
		dc.ketNoi();
		String sql = "select * from KhachHang where tendn = '" + un + "' AND pass = '" + pw + "'";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		khachhangbean kh = null;
		while(rs.next()) {
			kh = new khachhangbean(rs.getLong("makh"),rs.getString("hoten"), rs.getString("diachi"), rs.getString("sodt"), rs.getString("email"), rs.getString("tendn"),rs.getString("pass"));
		}
		rs.close();
		dc.cn.close();
		return kh;
	}
}
