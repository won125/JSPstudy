package servletlink.ex04;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class ShowMember extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id="", pwd="";
		Boolean isLogon = false;
		HttpSession session = request.getSession(false);
		if(session != null) {
			isLogon=(Boolean)session.getAttribute("isLogon");
			if(isLogon == true) {
				id = (String)session.getAttribute("log_id");
				out.print("<html><body>");
				out.print(id + "님은 골드회원이라 할인권이 있습니다.<br>");
				out.print("할인권을 이용하여 쇼핑을 즐겨보세요!");
				out.print("</body></html>");
			}else {
				response.sendRedirect("login4.html");
			}
		}else {
			response.sendRedirect("login4.html");
		}
	}


}
