package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;



public class sachbo {
	sachdao sach = new sachdao();

	public ArrayList<sachbean> getsach() throws Exception {
		return sach.getsach();
	}
	public ArrayList<sachbean> timTheoLoai(String maLoai) throws Exception {
		return sach.timTheoLoai(maLoai);
	}
	public ArrayList<sachbean> timSach(String text) throws Exception {
		return sach.timSach(text);
	}
}
