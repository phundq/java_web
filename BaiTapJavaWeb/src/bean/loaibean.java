package bean;

import java.util.ArrayList;

public class loaibean {
	public String maloai;
	public String tenloai;
	public String[] dssach;
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public String[] getDssach() {
		return dssach;
	}
	public void setDssach(String[] dssach) {
		this.dssach = dssach;
	}
	public loaibean(String maloai, String tenloai, String[] dssach) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
		this.dssach = dssach;
	}
	
	
	
	
}
