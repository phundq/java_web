package bo;

import java.util.ArrayList;

import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {
	hoadondao dao = new hoadondao();
	public long addHoaDon(long idUser, giohangbo gh) throws Exception {
		return dao.addHoaDon(idUser, gh);
	}
	public ArrayList<hoadonbean> getHoadon(long makh) throws Exception {
		return dao.getHoadon(makh);
	}
	public int updateHoaDon(String mahd) throws Exception {
		return dao.updateHoaDon(mahd);
	}
	public ArrayList<hoadonbean> getAllHoadon() throws Exception {
		return dao.getAllHoadon();
	}
}
