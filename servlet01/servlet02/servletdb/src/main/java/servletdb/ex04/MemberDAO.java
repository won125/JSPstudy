package servletdb.ex04;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			System.out.println("오라클 연결 에러");
		}
	}
	
	
	//회원 목록 확인
	public List<MemberVO> listMembers(){
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			con = dataFactory.getConnection();
			String query = "select * from membertbl";
			System.out.println("명령문 수행 결과 : " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joindate");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			System.out.println("오라클 연결이 끊어졌습니다.");
		}
		return list;
	}
	
	//회원 등록
	public void addMember(MemberVO memVo) {
		try {
			con = dataFactory.getConnection();
			String id = memVo.getId();
			String pwd = memVo.getPwd();
			String name = memVo.getName();
			String email = memVo.getEmail();
			String query = "insert into membertbl(id,pwd,name,email) values(?,?,?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.executeUpdate(); // 등록작업 실행
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println("등록 중 오류발생!!!");
		}
	}
	
	//회원 삭제
	public void delMember(String id) {
		try {
			con = dataFactory.getConnection();
			String query = "delete from membertbl where id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate(); // 삭제 작업 실행
			pstmt.close();
		} catch (Exception e) {
			System.out.println("삭제 중 에러발생");
		}
	}
}
