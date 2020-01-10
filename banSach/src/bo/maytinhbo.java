package bo;

public class maytinhbo {
	public String tinh(long a, long b, String pheptinh) {
		float kq=0;
		if (pheptinh.equals("+")) {
			kq = a + b;
		}
		if (pheptinh.equals("-")) {
			kq = a - b;
		}
		if (pheptinh.equals("*")) {
			kq = a * b;
		}
		if (pheptinh.equals("/")) {
			if (b == 0)
				return "không thực hiện được";
			else {
				kq = a / b;

			}

		}
		return String.valueOf(kq);
	}
}
