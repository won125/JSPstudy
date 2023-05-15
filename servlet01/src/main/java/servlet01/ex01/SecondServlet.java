package servlet01.ex01;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SecondServlet extends HttpServlet{

	@Override
	public void init() throws ServletException {
		System.out.println("init 메소드 호춯 <<<< Second");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget 메소드 호춯 <<<< Second");
	}

	@Override
	public void destroy() {
		System.out.println("destroy 메소드 호춯 <<<< Second");
	}


	
}
