package member;

//�옄諛� SQL �뙣�궎吏� import
import java.sql.*;
import java.util.*;

/**
 * 
 * DBBean �겢�옒�뒪�뒗 member �뀒�씠釉붽낵 愿��젴 �엳�뒗 �겢�옒�뒪�씠�떎
 *
 */
public class DBBean {
	private String mem_id;
	private String mem_passwd;
	private String mem_name;
	private String mem_nickname;
	private String mem_email;
	private String mem_num1;
	private String mem_num2;
	private String mem_phone;
	private String mem_gender;
	private int mem_Birthday1;
	private int mem_Birthday2;
	private int mem_Birthday3;
	private String mem_job;
	private String zipCode;
	private String userAddr1;
	private String userAddr2;
	private String userAddr3;
	
	// �삤�씪�겢 �뿰�룞�뿉 愿��젴�맂 李몄“蹂��닔 �꽑�뼵 
	Connection conn = null; 			// DB�뿰寃곕맂 �긽�깭(�꽭�뀡)�쓣 �떞�� 媛앹껜
    PreparedStatement pstmt = null;  	// SQL臾몄쓣 �굹���궡�뒗 媛앹껜
    ResultSet rs = null; 				// 荑쇰━臾몄쓣 �궇由곌쾬�뿉 ���븳 諛섑솚媛믪쓣 �떞�쓣 媛앹껜

	//�삤�씪�겢 JDBC �뿰�룞 �꽕�젙 蹂��닔 �꽑�뼵
    String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
    String jdbc_url = "jdbc:oracle:thin:@localhost:1521:xe";
    
    //DB �뿰�룞 硫붿냼�뱶
    public void connect() {
    	try {
    		// JDBC �뱶�씪�씠踰꾨�� 濡쒕뵫�븯�뒗 遺�遺�. 濡쒕뵫 �떎�뙣�떆 ClassNotFoundExceptiom 諛쒖깮
    		Class.forName(jdbc_driver);  
    		// �엯�젰�맂 �삤�씪�겢�쓽 怨꾩젙, 鍮꾨�踰덊샇, 二쇱냼瑜� 諛뷀깢�쑝濡� �삤�씪�겢�뿉 �젒�냽. �젒�냽 �떎�뙣�떆 SQLEXception 諛쒖깮. getConnection() 硫붿꽌�뱶�뒗 Connection�쓣 諛섑솚�븳�떎.
    		conn = DriverManager.getConnection(jdbc_url, "testdb", "testdb1234");   
    	} catch(Exception e) {
    		System.out.println(e);
    	}
    }
    
    //DB �옄�썝 �빐泥� 硫붿꽌�뱶
    public void disconnect() {
    	try {
    		pstmt.close();
    		conn.close();
    		if(rs!=null) rs.close();
    	} catch(Exception e) {
    		System.out.println(e);
    	}
    }
    
    // ID 以묐났 泥댄겕 留ㅼ꽌�뱶
    public int confirmId(String mem_id) {
    	connect();
    	int idDuplication = 0;	// id 以묐났 �뿬遺� 泥댄겕 蹂��닔
    	try {
    		String Confirmed_SELECT = "select mem_id from member where mem_id=?";  // ? => preparedStatement濡� 援ы쁽
    		
    		pstmt = conn.prepareStatement(Confirmed_SELECT);
    		pstmt.setString(1, mem_id);	// ? 媛믪쓣 吏��젙
    		rs = pstmt.executeQuery();
    		
    		if(rs.next()) {
    			idDuplication = 1;	// ID媛� 以묐났�씤 寃쎌슦
    		} else {
    			idDuplication = -1;	
    		}
    		
    	} catch(Exception e) {
    		System.out.println("confirmId():" + e);
    	} finally {
			disconnect();			//�옄�썝 �빐�젣 �떆�궡
		}
    	return idDuplication;
    } // confirmID close ===============================================================================================
    
    // DB INSERT 硫붿꽌�뱶
    public boolean insertDB() {
    	connect();
    	
    	try {
    		String MEMBER_INSERT = "insert into member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    		
    		pstmt =  conn.prepareStatement(MEMBER_INSERT);
    		pstmt.setString(1, mem_id);
    		pstmt.setString(2, mem_passwd);
    		pstmt.setString(3, mem_name);
    		pstmt.setString(4, mem_nickname);
    		pstmt.setString(5, mem_email);
    		pstmt.setString(6, mem_num1);
    		pstmt.setString(7, mem_num2);
    		pstmt.setString(8, mem_phone);
    		pstmt.setString(9, mem_gender);
    		pstmt.setInt(10, mem_Birthday1);
    		pstmt.setInt(11, mem_Birthday2);
    		pstmt.setInt(12, mem_Birthday3);
    		pstmt.setString(13, mem_job);
    		pstmt.setString(14, zipCode);
    		pstmt.setString(15, userAddr1);
    		pstmt.setString(16, userAddr2);
    		pstmt.setString(17, userAddr3);
    		
    		pstmt.executeUpdate();
    	} catch(Exception e) { 
    		System.out.println("insertDB() " + e);
    	} finally {
			disconnect();
		}
    	return true;
    } // insertDB close ===============================================================================================
    
    
	// 硫ㅻ쾭蹂��닔 �븯�굹�떦 getter/setter method 
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_passwd() {
		return mem_passwd;
	}
	public void setMem_passwd(String mem_passwd) {
		this.mem_passwd = mem_passwd;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_num1() {
		return mem_num1;
	}
	public void setMem_num1(String mem_num1) {
		this.mem_num1 = mem_num1;
	}
	public String getMem_num2() {
		return mem_num2;
	}
	public void setMem_num2(String mem_num2) {
		this.mem_num2 = mem_num2;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public int getMem_Birthday1() {
		return mem_Birthday1;
	}
	public void setMem_Birthday1(int mem_Birthday1) {
		this.mem_Birthday1 = mem_Birthday1;
	}
	public int getMem_Birthday2() {
		return mem_Birthday2;
	}
	public void setMem_Birthday2(int mem_Birthday2) {
		this.mem_Birthday2 = mem_Birthday2;
	}
	public int getMem_Birthday3() {
		return mem_Birthday3;
	}
	public void setMem_Birthday3(int mem_Birthday3) {
		this.mem_Birthday3 = mem_Birthday3;
	}
	public String getMem_job() {
		return mem_job;
	}
	public void setMem_job(String mem_job) {
		this.mem_job = mem_job;
	}
	public String getZipCode() {
		return zipCode;
	}
	public voi