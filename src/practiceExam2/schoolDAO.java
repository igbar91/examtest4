package practiceExam2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class schoolDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//중요 + 커넥션풀
	public void getConnection() {
		
		
		try {
			Context initctx = new InitialContext();
			Context envctx = (Context) initctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/oracle");
			conn = ds.getConnection();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		}
		
	
	//input입력안해도 list는 sql에 존재하면 출력됨.
public void inputList(courseBean bean) {
		
		getConnection();
		
		
		try {
			String sql = "insert into course values(?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			//데이터 넣을 떄는 rs필요없음  rs를 정의하지않으니까
				
				pstmt.setString(1, bean.getId());
				pstmt.setString(2, bean.getName());
				pstmt.setInt(3, bean.getCredit());
				pstmt.setString(4, bean.getLecturer());
				pstmt.setInt(5, bean.getWeek());
				pstmt.setInt(6, bean.getStart_hour());
				pstmt.setInt(7, bean.getEnd_end());
			
				pstmt.executeUpdate();
				
			
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	 public Vector<courseBean> coursebring(){
		 
		 Vector<courseBean> vec = new Vector<courseBean>();
		 getConnection();
		 
		 
		 try {
			 String sql = "select id, name, credit, lecturer, week, start_hour, end_end from course order by id asc";
			 
			 pstmt = conn.prepareStatement(sql);
			 rs = pstmt.executeQuery();
			 
			 while(rs.next()) {
				 courseBean bean = new courseBean();
				//*중요 rs에는 index만
				 bean.setId(rs.getString(1));
				 bean.setName(rs.getString(2));
				 bean.setCredit(rs.getInt(3));
				 bean.setLecturer(rs.getString(4));
				 bean.setWeek(rs.getInt(5));
				 bean.setStart_hour(rs.getInt(6));
				 bean.setEnd_end(rs.getInt(7));
			//중요
				 vec.add(bean);
			 }
			 	conn.close();
			
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return vec;
	 }

	 public courseBean bringBean(String id) {
		 
		 getConnection();
		 courseBean bean = new courseBean();
		 
		 try {
			 String sql = "select * from course where id = ? ";
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1, id);
			 rs = pstmt.executeQuery();
			 if(rs.next()) {

				 bean.setId(rs.getString(1));
				 bean.setName(rs.getString(2));
				 bean.setCredit(rs.getInt(3));
				 bean.setLecturer(rs.getString(4));
				 bean.setWeek(rs.getInt(5));
				 bean.setStart_hour(rs.getInt(6));
				 bean.setEnd_end(rs.getInt(7));
				
		
			 }
			 conn.close();
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 
		 return bean;
	 }
	 
	 public void updateData(courseBean bean ) {
		 
		 getConnection();
		 
		 try {
			 //테스트 결과 where절도 반드시 ** 넣어줘야 실행됨.
			 String sql = "update course set name=?, credit=?, lecturer=?, week=?, start_hour=?, end_end=? where id=?";
			 pstmt = conn.prepareStatement(sql);
		
			 
			 
			 pstmt.setString(1, bean.getName());
			 pstmt.setInt(2, bean.getCredit());
			 pstmt.setString(3, bean.getLecturer());
			 pstmt.setInt(4, bean.getWeek());
			 pstmt.setInt(5, bean.getStart_hour());
			 pstmt.setInt(6, bean.getEnd_end());
			 pstmt.setString(7, bean.getId());
			 
			 pstmt.executeUpdate();
			 
			 conn.close();
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 
	 }
	
	 public LecturerBean teacherInfo(String name){
		 
		 getConnection();
		 LecturerBean bean = new LecturerBean();
		 
		 
		 try {
			 String sql = "select * from lecturer where name=?";
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1, name);
			 rs = pstmt.executeQuery();
			 while(rs.next()){
				
				 bean.setIdx(rs.getInt(1));
				 bean.setName(rs.getString(2));
				 bean.setMajor(rs.getString(3));
				 bean.setField(rs.getString(4));
				 
			 }	
				conn.close();
				 
				 
			 }catch(Exception e) {
				 e.printStackTrace();
			 }
			 
		
		 
		 return bean;
	 }
	 
	 public void deleteData(String id) {
		 
		 getConnection();
		 
		 try {
			 //테스트 결과 where절도 반드시 ** 넣어줘야 실행됨.
			 String sql = "delete from course where id=?";
			 pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
	
		
			 
			 pstmt.executeUpdate();
			 
			 conn.close();
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 
	 }
	
	

}//end