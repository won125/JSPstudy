package board;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class BoardMgr {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public BoardMgr() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			System.out.println("오라클 연결 에러");
		}
	}
	
	//회원 목록 확인
		public List listBoards(){
			List list = new ArrayList();
			try {
				con = dataFactory.getConnection();
				String query = "select * from boardtbl";
				System.out.println("명령문 수행 결과 : " + query);
				pstmt = con.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					String num = rs.getString("num");
					String name = rs.getString("name");
					String subject = rs.getString("subject");
					String content = rs.getString("content");
					Date regdate = rs.getDate("regdate");
					String pass = rs.getString("pass");
					String count = rs.getString("count");
					
					BoardBean boardBean = new BoardBean();
					boardBean.setNum(num);
					boardBean.setName(name);
					boardBean.setSubject(subject);
					boardBean.setContent(content);
					boardBean.setRegdate(regdate);
					boardBean.setPass(pass);
					boardBean.setCount(count);
				}
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e) {
				System.out.println("오라클 연결이 끊어졌습니다.");
			}
			return list;
		}
		
		//게시글 등록
		public void addBoard(BoardBean boardBean) {
			try {
				con = dataFactory.getConnection();
				String name = boardBean.getName();
				String subject = boardBean.getSubject();
				String content = boardBean.getContent();
				String pass = boardBean.getPass();
				
				String query = "insert into boardtbl(num,name,subject,content,pass) values(seq_num.nextval,?,?,?,?,?)";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, name);
				pstmt.setString(2, subject);
				pstmt.setString(3, content);
				pstmt.setString(4, pass);
				pstmt.executeUpdate(); // 등록작업 실행
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println("등록 중 오류발생!!!");
			}
		}
		
		//회원 삭제
				public void updateBoard(BoardBean boardBean) {
					try {
						con = dataFactory.getConnection();
						String num = boardBean.getNum();
						String subject = boardBean.getSubject();
						String content = boardBean.getContent();
						String query = "update boardtbl set subject=?,content=? where num=?";
						pstmt = con.prepareStatement(query);
						pstmt.setString(1, subject);
						pstmt.setString(2, content);
						pstmt.setString(3, num);
						pstmt.executeUpdate(); // 수정 작업 실행
						pstmt.close();
					} catch (Exception e) {
						System.out.println("수정 중 에러발생");
					}
				}
		
		//회원 삭제
		public void delBoard(String num) {
			try {
				con = dataFactory.getConnection();
				String query = "delete from boardtbl where num=?";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, num);
				pstmt.executeUpdate(); // 삭제 작업 실행
				pstmt.close();
			} catch (Exception e) {
				System.out.println("삭제 중 에러발생");
			}
		}
}
