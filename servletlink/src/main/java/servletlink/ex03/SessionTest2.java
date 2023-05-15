package servletlink.ex03;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/session2")
public class SessionTest2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		out.print("세션 아이디 : " + session.getId() + "<br>");
		out.print("최초 세션 생성 시간 : " + new Date(session.getCreationTime()) + "<br>");
		out.print("최근 세션 접근 시간 : " + new Date(session.getLastAccessedTime()) + "<br>");
		//session.setMaxInactiveInterval(10); => 세션의 유효시간 설정
		out.print("세션 유효 시간 : " + session.getMaxInactiveInterval() + "<br>");
		if(session.isNew()) {
			out.print("새 세션이 만들어졌습니다.");
		}
		//세션 생성 후 삭제
		session.invalidate(); // 세션 정보 강제 삭제
	}

}
