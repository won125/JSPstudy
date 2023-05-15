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

@WebServlet("/login3")
public class SessionTest3 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
		
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		if(session.isNew()) {
			if(user_id != null) {
				session.setAttribute("user_id", user_id);
				out.print("<a href='login3'>로그인 상태 확인</a>");
			}else {
				out.print("<a href='login2.html'>다시 로그인하기</a>");
			}
		}else {
			user_id = (String)session.getAttribute("user_id");
			if(user_id != null && user_id.length() != 0) {
				out.print("안녕하세요. " + user_id + "님의 방문을 환영합니다.");
			}else {
				out.print("<a href='login2.html'>다시 로그인하기</a>");
				session.invalidate();
			}
		}
		
	}

}
