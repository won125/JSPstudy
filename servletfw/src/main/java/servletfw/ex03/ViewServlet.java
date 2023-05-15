package servletfw.ex03;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;


public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utg-8");
		PrintWriter out = response.getWriter();
		List memberList = (List)request.getAttribute("memberList");
		out.print("<html><body>");
		out.print("<table border=1>");
		out.print("<tr align='center' bgcolor='#CEFBC9' width=100>");
		out.print("<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>가입일</th><th>탈퇴 여부</th>");
		for(int i=0; i<memberList.size(); i++) {
			MemberVO membervo = (MemberVO)memberList.get(i);
			String id = membervo.getId();
			String pwd = membervo.getPwd();
			String name = membervo.getName();
			String email = membervo.getEmail();
			Date joinDate = membervo.getJoinDate();
			out.print("<tr><td>" + id + "</td><td>" + pwd +
					"</td><td>" + name + "</td><td>" + email + "</td><td>" + joinDate + "</td><td>" + "<a href='/servletfw/member3?command=delMember&id=" + id + "'>회원 탈퇴</a></td>" + "</tr>");
		}
		out.print("<table>");
		out.print("<a href='/servletfw/memberForm.html'>새 회원 등록하기</a>");
		out.print("</body></html>");
	}

}
