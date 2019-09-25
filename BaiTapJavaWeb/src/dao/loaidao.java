package dao;

import java.util.ArrayList;

import bean.loaibean;

public class loaidao {

	public ArrayList<loaibean> getLoai(){
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		ds.add(new loaibean("ma1", "loai1",new String[]{"sach11","sach12","sach13","sach14"}));
		ds.add(new loaibean("ma2", "loai2",new String[]{"sach21","sach22","sach23","sach24","sach25","sach26"}));
		ds.add(new loaibean("ma3", "loai3",new String[]{"sach31","sach32","sach33",}));
		ds.add(new loaibean("ma4", "loai4",new String[]{"sach41","sach42","sach43","sach44"}));
		ds.add(new loaibean("ma5", "loai5",new String[]{"sach51","sach52","sach53","sach54","sach55"}));
		return ds;
	}

}
