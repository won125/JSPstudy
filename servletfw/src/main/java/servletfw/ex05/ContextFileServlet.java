package servletfw.ex05;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.StringTokenizer;


public class ContextFileServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		ServletContext context = getServletContext();
		InputStream inputStream = context.getResourceAsStream("/WEB-INF/bin/init.txt");
		BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
		String menu = null, menu_member=null, menu_order=null, menu_goods=null;
		while((menu=reader.readLine()) != null) {
			StringTokenizer tokenizer = new StringTokenizer(menu,",");
			menu_member = tokenizer.nextToken();
			menu_order = tokenizer.nextToken();
			menu_goods = tokenizer.nextToken();
		}
		out.print("<html><body>");
		out.print("<p>" + menu_member + "</p>");
		out.print("<p>" + menu_order + "</p>");
		out.print("<p>" + menu_goods + "</p>");
		out.print("</body></html>");
	}

}
