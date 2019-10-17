package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {

	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void them(String maSach, String tenSach, long gia, String tacGia, long soLuong) {
		giohangbean gh = new giohangbean(maSach, tenSach, gia, tacGia, soLuong);
		ds.add(gh);
	}
	public void sua(String maSach, long soLuong) {
		for(giohangbean g:ds) {
			if(g.getMaSach().equals(maSach)) {
				g.setSoLuong(g.getSoLuong()+soLuong);
				g.setThanhTien();
			}
		}
	}
	public int xoa(String maSach, long soLuong) {
		int kt=1,i=0;
		for(giohangbean g:ds) 
		{
			if(g.getMaSach().equals(maSach)) 
			{
				long s=g.getSoLuong();
				if(s<soLuong||soLuong<1){
					kt=0;
					return kt;
				}
				if(s>soLuong) {
					g.setSoLuong(s-soLuong);
					g.setThanhTien();
					return kt;
				}
				if(s==soLuong) {
					ds.remove(i);
					return kt;
				}
				
				
				
			}
			i++;
		}
		return kt;
	}
	public long tongTien() {
		long s=0;
		for(giohangbean gh:ds)
			s+= gh.getThanhTien();
		return s;
	}
}