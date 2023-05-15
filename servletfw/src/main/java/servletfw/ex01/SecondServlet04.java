package servletfw.ex01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/second5")
public class SecondServlet04 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String name = (String)request.getAttribute("name");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<p>" + name + "님 환영합니다.</p>");
		out.println("<p>dispatch을 이용한 forward 실습입니다.</p>");
		out.println("</body></html>");
		
	}

}
