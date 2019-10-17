package bean;

public class giohangbean {
	public String maSach;
	public String tenSach;
	public long gia;
	public String tacGia;
	public long soLuong;
	public long thanhTien;
	public giohangbean(String maSach, String tenSach, long gia, String tacGia, long soLuong) {
		super();
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.gia = gia;
		this.tacGia = tacGia;
		this.soLuong = soLuong;
		this.thanhTien = soLuong*gia;
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getTacGia() {
		return tacGia;
	}
	public void setTacGia(String tacGia) {
		this.tacGia = tacGia;
	}
	public long getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(long soLuong) {
		this.soLuong = soLuong;
	}
	public long getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(long thanhTien) {
		this.thanhTien = thanhTien;
	}
	public void setThanhTien() {
		this.thanhTien = this.gia*this.soLuong;
	}
	
}
