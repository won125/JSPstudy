package jspetc.ex01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


public class JsonServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String jsonInfo = request.getParameter("jsonInfo");
		JSONParser jsonParser = new JSONParser();// JSON파일을 파싱하기 위한 라이브러리
		try {
			JSONObject jsonObject = (JSONObject)jsonParser.parse(jsonInfo);
			System.out.println("** 회원 정보 **");
			System.out.println("이름 : " + jsonObject.get("name"));
			System.out.println("나이 : " + jsonObject.get("age"));
			System.out.println("직업 : " + jsonObject.get("job"));
		} catch (Exception e) {
			System.out.println("JSON 요청 데이터 오류");
		}
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("<p>서버에 회원정보 전송 완료</p>");
		out.print("</body></html>");
	}

}
