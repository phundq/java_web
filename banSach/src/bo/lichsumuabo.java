package bo;

import java.util.ArrayList;

import bean.lichsumuabean;
import dao.lichsumuadao;

public class lichsumuabo {
	lichsumuadao dao = new lichsumuadao();

	public ArrayList<lichsumuabean> getLichSuMua(long maKH) throws Exception {
		return dao.getLichSuMua(maKH);
	}
}
