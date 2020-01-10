package bo;

import java.util.ArrayList;

import bean.sachadminbean;
import dao.sachadmindao;

public class sachadminbo {
	sachadmindao dao = new sachadmindao();
	public ArrayList<sachadminbean> getsach() throws Exception{
		return dao.getsach();
	}
	public int themSach(sachadminbean sach) throws Exception {
		return dao.themSach(sach);
	}
	public int xoaSach(String masach) throws Exception {
		return dao.xoaSach(masach);
	}
	public int suaSach(sachadminbean sach) throws Exception {
		return dao.suaSach(sach);
	}
	public sachadminbean timSachyTheoMa(String maSach) throws Exception {
		return dao.timSachyTheoMa(maSach);
	}
}
