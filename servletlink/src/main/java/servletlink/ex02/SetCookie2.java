package servletlink.ex02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

@WebServlet("/set2")
public class SetCookie2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Date date = new Date();
		Cookie cookie = new Cookie("cookieTest2", URLEncoder.encode("하늘이 맑아요","utf-8")); //new Cookie(쿠키이름,쿠키내용);
		cookie.setMaxAge(-1);
		response.addCookie(cookie);
		out.print("쿠키 생성된 시간 : " + date);
		out.print("쿠키가 저장되었습니다.");
		
	}

}
