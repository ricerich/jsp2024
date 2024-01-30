package boolist;

import java.sql.DriverManager;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

import java.sql.SQLException;

public class BookStore 
{
	//1.멤버변수
	Connection con;//멤버변수가 클래스로 만든 객체 변수 
	Statement stmt;
	ResultSet rs;
	
	//방법1: 변수
	int bookid;
	String bookname;
	String publisher;
	int price;
	
	//방법2: 배열
	int bookidArr[];
	String booknameArr[];
	String publisherArr[];
	int priceArr[];
	
	//방법3: 객체
	class Book{
		int bookid;
		String bookname;
		String publisher;
		int price;
	}
	
	//방법4: 객체배열
	

	//2.생성자:역할은 멤버변수 초기화
	public BookStore(){
		con = null;
		stmt = null;
		rs = null;
		
		bookidArr = new int[10];
		booknameArr = new String[10];
		publisherArr = new String[10];
		priceArr = new int[10];
	}
	
	//메소드로 변경
	public void getCon()  {
		
		//con = new Connection();//이런 형태가 되어야 할꺼 같은데... 
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String userid = "c##madang"; // c## 필요하면 앞에 추가
		String pwd = "c##madang"; // c## 필요하면 앞에 추가

		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			System.out.println("드라이버 로드 성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			System.out.println("데이터베이스 연결 준비 .....");
			
			con = DriverManager.getConnection(url, userid, pwd);
			
			System.out.println("데이터베이스 연결 성공");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//3.메소드
	public void selectBookList() { // 생성자
		//String query = "SELECT * FROM book";
		try {
			
			stmt = con.createStatement(); // 2
			
			rs = stmt.executeQuery("SELECT * FROM book"); // 3
			
			System.out.println("BOOK ID \tBOOK NAME \t\tPUBLISHER \t\t\tPRICE");
			
			int index = 0; 
			while (rs.next()) {
				
				//방법1: 변수
				bookid = rs.getInt(1);
				bookname = rs.getString(2);
				publisher = rs.getString(3);
				price = rs.getInt(4);
				
				//printBook();
				
				//방법2: 배열
				
				bookidArr[index] = rs.getInt(1);
				booknameArr[index] = rs.getString(2);
				publisherArr[index] = rs.getString(3);
				priceArr[index] = rs.getInt(4);
				
				index++;
				
				//printBookArr(); //이거슨 한꺼번에 다 출력 가능함// 고로 여기서 사용하는게 알맞지 않다!!
				
				
//				System.out.print("\t" + rs.getInt(1));
//				System.out.print("\t" + rs.getString(2));
//				System.out.print("\t\t\t" + rs.getString(3));
//				System.out.println("\t\t\t\t" + rs.getInt(4));
			}
			
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//방법1: 변수 출력용
	private void printBook()
	{
		System.out.print("\t" + bookid);
		System.out.print("\t" + bookname);
		System.out.print("\t" + publisher);
		System.out.println("\t" + price);
	}
	
	//방법2: 배열 출력용
	public void printBookArr()
	{
		for(int i=0; i<bookidArr.length ;i++)
		{
			System.out.print("\t" + bookidArr[i]);
			System.out.print("\t" + booknameArr[i]);
			System.out.print("\t" + publisherArr[i]);
			System.out.println("\t" + priceArr[i]);
		}
	}
	
	public void selectCustomerList() { // 생성자
		//String query = "SELECT * FROM book";
		try {
			
			stmt = con.createStatement(); // 2
			
			rs = stmt.executeQuery("SELECT * FROM customer"); // 3
			
			System.out.println("사용자ID \t사용자 이름 \t\t주소 \t\t전화번호");
			while (rs.next()) {
				System.out.print("\t" + rs.getInt(1));
				System.out.print("\t" + rs.getString(2));
				System.out.print("\t\t\t" + rs.getString(3));
				System.out.println("\t\t\t\t" + rs.getString(4));

			}
			
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}


}
