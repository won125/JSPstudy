package servletlink.ex02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;


public class GetCookie extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Cookie[] value = request.getCookies();
		for(int i=0; i<value.length; i++) {
			if(value[i].getName().equals("cookieTest")) {
				out.print("<h3>쿠키 값 : " + URLDecoder.decode(value[i].getValue(),"utf-8") + "</h3>");
			}
			
		}
	}

}
