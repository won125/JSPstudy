package servlet01.ex01;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {

	@Override
	public void init() throws ServletException {
		System.out.println("init매서드 호출됨.");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget매서드 호출됨.");
	}

	@Override
	public void destroy() {
		System.out.println("destroy매서드 호출됨.");
	}


	
}
