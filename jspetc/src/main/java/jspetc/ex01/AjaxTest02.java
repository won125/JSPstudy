package jspetc.ex01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class AjaxTest02
 */
public class AjaxTest02 extends HttpServlet {
	
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
		out.print("<main>");
		out.print("<book>");
		out.print("<title>olly 제빙기</title>");
		out.print("<writer>올리 이야기</writer>");
		out.print("<image>http://localhost:8090/jspetc/images/OLM13W_info10.gif</image>");
		out.print("</book>");
		out.print("<book>");
		out.print("<title>olly 제빙기</title>");
		out.print("<writer>올리 이야기</writer>");
		out.print("<image>http://localhost:8090/jspetc/images/OLM13W_info11.gif</image>");
		out.print("</book>");
		out.print("</main>");
	}

}
