package servletdb.ex04;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

@WebServlet("/member3")
public class MemberServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandle(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandle(req,resp);
	}
	
	private void doHandle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		MemberDAO dao = new MemberDAO();
		PrintWriter out = resp.getWriter();
		String command = req.getParameter("command");
		if(command != null && command.equals("addMember")) {
			String _id = req.getParameter("id");
			String _pwd = req.getParameter("pwd");
			String _name = req.getParameter("name");
			String _email = req.getParameter("email");
			MemberVO vo = new MemberVO();
			vo.setId(_id);
			vo.setPwd(_pwd);
			vo.setName(_name);
			vo.setEmail(_email);
			dao.addMember(vo);
		}else if(command != null && command.equals("delMember")) {
			System.out.println(command);
			String id = req.getParameter("id");
			System.out.println(id);
			dao.delMember(id);
		}
		List list = dao.listMembers();
		out.print("<html><body>");
		out.print("<table border=1>");
		out.print("<tr align='center' bgcolor='#CEFBC9' width=100>");
		out.print("<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>가입일</th><th>탈퇴 여부</th>");
		for(int i=0; i<list.size(); i++) {
			MemberVO membervo = (MemberVO)list.get(i);
			String id = membervo.getId();
			String pwd = membervo.getPwd();
			String name = membervo.getName();
			String email = membervo.getEmail();
			Date joinDate = membervo.getJoinDate();
			out.print("<tr><td>" + id + "</td><td>" + pwd +
					"</td><td>" + name + "</td><td>" + email + "</td><td>" + joinDate + "</td><td>" + "<a href='/servletdb/member3?command=delMember&id=" + id + "'>회원 탈퇴</a></td>" + "</tr>");
		}
		out.print("<table>");
		out.print("<a href='/servletdb/memberForm.html'>새 회원 등록하기</a>");
		out.print("</body></html>");
		
	}
	

}
