package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	
	public ArrayList<sachbean> getsach(){
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds.add(new sachbean("s1", "Trải nghiệm&khát vọng CS", "Trần A", (long)65000, "b1.jpg"));
		ds.add(new sachbean("s2", "Bí mật của may mắn", "Nguyễn Văn B", (long)66000, "b2.jpg"));
		ds.add(new sachbean("s3", "Chắp cánh tuổi thơ", "Lê Long", (long)67000, "b3.jpg"));
		ds.add(new sachbean("s4", "Hạt giống yêu thương", "Minh Tâm", (long)68000, "b4.jpg"));
		ds.add(new sachbean("s5", "Giá trị cuộc sống", "Minh Nhật", (long)69000, "b5.jpg"));
		ds.add(new sachbean("s6", "Hãy yêu cuốc sống bạn chọn", "Hà Như", (long)70000, "b6.jpg"));
		ds.add(new sachbean("s7", "Quà tặng cuộc sống", "Nguyễn Minh Trí", (long)71000, "b7.jpg"));
		ds.add(new sachbean("s8", "Quà tặng tinh thần dành cho phụ nữ", "Mỹ Mỹ", (long)72000, "b8.jpg"));
		return ds;
	}

}
