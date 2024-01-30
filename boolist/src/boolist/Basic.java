package boolist;

public class Basic {
	public static void main(String args[]) { // 메소드이면서 프로그램실행에 관여함
		
		BookStore bs1 = new BookStore();
		
		bs1.selectBookList();
		bs1.selectCustomerList();
		
//		BookStore bs2 = new BookStore();
//		bs2.selectCustomerList();
	}
}
