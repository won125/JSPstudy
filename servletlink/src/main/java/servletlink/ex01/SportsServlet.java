package servletlink.ex01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class SportsServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String user_id = request.getParameter("user_id");
		out.print("<html><body>");
		if(user_id != null && user_id.length() != 0) {
			out.print(user_id + "님의 로그인이 확인되었습니다.<br>");
			out.print("스포츠 중계 댓글을 넣을 수 있습니다.<br>");
		}else {
			out.print("로그인 하지 않았습니다.<br>");
			out.print("서비스 이용을 위해서는 로그인이 필요합니다.");
			out.print("<a href='/servletlink/login.html'>로그인 창으로 이동하기</a>");
		}
		out.print("</body></html>");
		
		
	}

}
