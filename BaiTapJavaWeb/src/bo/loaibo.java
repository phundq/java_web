package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao Dao = new loaidao();
	public ArrayList<loaibean> getLoai(){
		return Dao.getLoai();
	}

}
