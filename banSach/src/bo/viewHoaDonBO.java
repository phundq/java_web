package bo;

import java.util.ArrayList;

import bean.viewHoaDon;
import dao.viewHoaDonDao;

public class viewHoaDonBO {
	viewHoaDonDao dao = new viewHoaDonDao();
	public ArrayList<viewHoaDon> getAllHoadon() throws Exception {
		return dao.getAllHoadon();
	}
}
