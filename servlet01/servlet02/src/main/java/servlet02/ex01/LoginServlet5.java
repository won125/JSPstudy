package servlet02.ex01;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class LoginServlet5 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("init method 호출");
	}

	public void destroy() {
		System.out.println("destroy method 호출");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pwOut = response.getWriter();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String address = request.getParameter("user_address");
		System.out.println("아이디 : " + user_id);
		System.out.println("비밀번호 : " + user_pw);
		String data = "<html>";
		data+="<body>";
		data+="<p>아이디 : " + user_id + "</p>";
		data+="<p>비밀번호 : " + user_pw + "</p>";
		data+="<p>주소 : " + address + "</p>";
		data+="</body>";
		data+="</html>";
		pwOut.print(data);
	}

}
