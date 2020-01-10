package bo;

import java.util.ArrayList;

import bean.loaisachbean;
import dao.loaisachdao;

public class loaisachbo {
	loaisachdao ldao = new loaisachdao();
	public ArrayList<loaisachbean> getloai() throws Exception{
		return ldao.getloai();
	}
public  int themLoai(String maLoai,String tenLoai) throws Exception {
	return ldao.themLoai(maLoai, tenLoai);
}
public  int suaLoai(String maLoai,String tenLoai) throws Exception {
	return ldao.suaLoai(maLoai, tenLoai);
}
public  int xoaLoai(String maLoai) throws Exception {
	return ldao.xoaLoai(maLoai);
}
}
