package bean;

import java.util.Date;

public class lichsumuabean {
	public long maKH;
	public long maHD;
	public Date ngayMua;
	public boolean daMua;
	public String maSach;
	public long sLMua;
	public String tenSach;
	public String anh;
	public long gia;
	public long getMaKH() {
		return maKH;
	}
	public void setMaKH(long maKH) {
		this.maKH = maKH;
	}
	public long getMaHD() {
		return maHD;
	}
	public void setMaHD(long maHD) {
		this.maHD = maHD;
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
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public long getsLMua() {
		return sLMua;
	}
	public void setsLMua(long sLMua) {
		this.sLMua = sLMua;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public lichsumuabean(long maKH, long maHD, Date ngayMua, boolean daMua, String maSach, long sLMua, String tenSach,
			String anh, long gia) {
		super();
		this.maKH = maKH;
		this.maHD = maHD;
		this.ngayMua = ngayMua;
		this.daMua = daMua;
		this.maSach = maSach;
		this.sLMua = sLMua;
		this.tenSach = tenSach;
		this.anh = anh;
		this.gia = gia;
	}
	
	
}
