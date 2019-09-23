package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;



public class sachbo {
	sachdao sach = new sachdao();

	public ArrayList<sachbean> getsach() {
		return sach.getsach();
	}
}
