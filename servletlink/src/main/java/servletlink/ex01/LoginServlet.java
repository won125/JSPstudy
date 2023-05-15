package servletlink.ex01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		String user_hp = request.getParameter("user_hp");
		String user_email = request.getParameter("user_email");
		String user_address = request.getParameter("user_address");
		String data = "<html><body>";
		data+="로그인 하였습니다.";
		data+="아이디 : " + user_id + "<br>";
		data+="비밀번호 : " + user_pwd + "<br>";
		data+="핸드폰 : " + user_hp + "<br>";
		data+="이메일 : " + user_email + "<br>";
		data+="주소 : " + user_address + "<br>";
		data+="</body></html>";
				
		out.print(data);
	}

}
