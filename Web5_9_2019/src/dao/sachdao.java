package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	
	public ArrayList<sachbean> getsach(){
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds.add(new sachbean("s1", "csdl1", "nhha", (long)65000, "b1.jpg"));
		ds.add(new sachbean("s2", "csdl2", "nhha", (long)66000, "b2.jpg"));
		ds.add(new sachbean("s3", "csdl3", "nhha", (long)67000, "b3.jpg"));
		ds.add(new sachbean("s4", "csdl4", "nhha", (long)68000, "b4.jpg"));
		ds.add(new sachbean("s5", "csdl5", "nhha", (long)69000, "b5.jpg"));
		ds.add(new sachbean("s6", "csdl6", "nhha", (long)70000, "b6.jpg"));
		ds.add(new sachbean("s7", "csdl7", "nhha", (long)71000, "b7.jpg"));
		ds.add(new sachbean("s8", "csdl8", "nhha", (long)72000, "b8.jpg"));
		return ds;
	}

}
