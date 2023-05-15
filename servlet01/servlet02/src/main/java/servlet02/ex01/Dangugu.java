package servlet02.ex01;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Dangugu
 */
public class Dangugu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("init method 호출");
	}

	public void destroy() {
		System.out.println("destroy method 호출");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String dan = request.getParameter("dan");
		Integer index = Integer.parseInt(dan);
		PrintWriter out_dan = response.getWriter();
		if(dan != null || dan.length() != 0) {
			out_dan.print("<html>");
			out_dan.print("<body>");
			out_dan.print("<table border=1 width=200 align=center>");
			out_dan.print("<tr bgcolor='#CEFBC9'>");
			out_dan.print("<th colspan=2>** " + index + "단 **</th>");
			out_dan.print("</tr>");
			for(int i = 1; i<=9; i++) {
				out_dan.print("<tr align=center>");
				out_dan.print("<td width=100>" + index + " x " + i + "</td>");
				out_dan.print("<td width=100>" + (index*i) + "</td>");
				out_dan.print("</tr>");
			}
			out_dan.print("<a href='http://localhost:8090/servlet02/gugu.html'>첫 페이지로 돌아가기</a>");
			out_dan.print("</body>");
			out_dan.print("</html>");
		}
	}

}
