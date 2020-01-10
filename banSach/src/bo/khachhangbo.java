package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao dao = new khachhangdao();
	public khachhangbean checkLogin(String un, String pw) throws Exception {
		return dao.checkLogin(un, pw);
	}
}
