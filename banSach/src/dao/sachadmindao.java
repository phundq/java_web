package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import bean.sachadminbean;


public class sachadmindao {
	dungchung dc = new dungchung();
	public ArrayList<sachadminbean> getsach() throws Exception{
		ArrayList<sachadminbean> ds = new ArrayList<sachadminbean>();
		//b1: kết nối csdl qlsach
		dc.ketNoi();
		//b2: lấy dl
		String query = "Select * from sach";
		PreparedStatement statement = dc.cn.prepareStatement(query);
		ResultSet rs= statement.executeQuery();        
		while (rs.next()){
			java.sql.Date datesql = rs.getDate("NgayNhap");
			Date date = new java.util.Date(datesql.getTime());
			
			sachadminbean sach = new sachadminbean(rs.getString("masach"), rs.getString("tensach"), rs.getLong("soluong"), rs.getString("tacgia"), rs.getLong("gia"), rs.getString("anh"), date, rs.getString("maloai"), rs.getString("sotap"));
			ds.add(sach);
		}
		//b3: đóng kn
		rs.close();
		dc.cn.close();
		
		return ds;
	}
	public int themSach(sachadminbean sach) throws Exception {
		java.sql.Date sqlDate = new java.sql.Date(sach.getNgaynhap().getTime());
		dc.ketNoi();
		String sql = "INSERT INTO sach(masach,tensach,soluong,gia,anh,NgayNhap,tacgia,maloai,sotap) VALUES (?,?,?,?,?,?,?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		
		cmd.setString(1, sach.getMasach());
		cmd.setString(2, sach.getTensach());
		cmd.setLong(3, sach.getSoluong());
		cmd.setLong(4, sach.getGia());
		cmd.setString(5, sach.getAnh());
		cmd.setDate(6, sqlDate);
		cmd.setString(7, sach.getTacgia());
		cmd.setString(8, sach.getMaloai());
		cmd.setString(9, sach.getSotap());
		int rs = cmd.executeUpdate();
		dc.cn.close();
		return rs;

	}

	public int xoaSach(String masach) throws Exception {

		dc.ketNoi();
		String sql = "delete from sach where masach = ?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		int rs = cmd.executeUpdate();
		dc.cn.close();
		
		return rs;

	}

	public int suaSach(sachadminbean sach) throws Exception {
		java.sql.Date sqlDate = new java.sql.Date(sach.getNgaynhap().getTime());
		dc.ketNoi();
		String sql = "update sach set tensach=?,soluong=?,gia=?,anh=?,NgayNhap=?,tacgia=?,maloai=?,sotap = ? where masach = ?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		
		cmd.setString(1, sach.getTensach());
		cmd.setLong(2, sach.getSoluong());
		cmd.setLong(3, sach.getGia());
		cmd.setString(4, sach.getAnh());
		cmd.setDate(5, sqlDate);
		cmd.setString(6, sach.getTacgia());
		cmd.setString(7, sach.getMaloai());
		cmd.setString(8, sach.getSotap());
		cmd.setString(9, sach.getMasach());
		int rs = cmd.executeUpdate();
		dc.cn.close();
		
		return rs;

	}
	public sachadminbean timSachyTheoMa(String maSach) throws Exception {

		dc.ketNoi();
		String sql = "select * from sach where masach = ?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, maSach);
		ResultSet rs = cmd.executeQuery();
		sachadminbean sb = null;
		while (rs.next()) {
			String masach = rs.getString("masach");
			String tensach = rs.getString("tensach");
			String tacgia = rs.getString("tacgia");
			long gia = rs.getInt("gia");
			String anh = rs.getString("anh");
			Date ngaynhap = rs.getDate("NgayNhap");
			String maloai = rs.getString("maloai");
			String sotap = rs.getString("sotap");
			long soluong = rs.getLong("soluong");
			if (anh != null) {
				sb = new sachadminbean(masach, tensach, soluong, tacgia, gia, anh, ngaynhap, maloai, sotap);

			}
		}
		rs.close();
		dc.cn.close();

		return sb;
	}

}
