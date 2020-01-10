package bean;

import java.util.Date;

public class viewHoaDon {
	public long maHoaDon;
	public String hoTen;
	public long tongSL;
	public long tongTien;
	public Date ngayMua;
	public boolean daMua;
	public long getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(long maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public long getTongSL() {
		return tongSL;
	}
	public void setTongSL(long tongSL) {
		this.tongSL = tongSL;
	}
	public long getTongTien() {
		return tongTien;
	}
	public void setTongTien(long tongTien) {
		this.tongTien = tongTien;
	}
	public Date getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.ngayMua = ngayMua;
	}
	public boolean isDaMua() {
		return daMua;
	}
	public void setDaMua(boolean daMua) {
		this.daMua = daMua;
	}
	public viewHoaDon(long maHoaDon, String hoTen, long tongSL, long tongTien, Date ngayMua, boolean daMua) {
		super();
		this.maHoaDon = maHoaDon;
		this.hoTen = hoTen;
		this.tongSL = tongSL;
		this.tongTien = tongTien;
		this.ngayMua = ngayMua;
		this.daMua = daMua;
	}
	
}
