package Tam;

public class Hang {
	private String tenhang;
	private int gia;
	private int soluong;
	private int thanhtien;

	public Hang(String tenhang, int gia, int soluong) {
		super();
		this.tenhang = tenhang;
		this.gia = gia;
		this.soluong = soluong;
		this.thanhtien = gia * soluong;
	}

	public String getTenhang() {
		return tenhang;
	}

	public void setTenhang(String tenhang) {
		this.tenhang = tenhang;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

}
