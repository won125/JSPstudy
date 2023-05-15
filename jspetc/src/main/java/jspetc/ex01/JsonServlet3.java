package jspetc.ex01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

@WebServlet("/json3")
public class JsonServlet3 extends HttpServlet {

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
		JSONObject jObject = new JSONObject();
		JSONArray memArray = new JSONArray();
		JSONObject memberInfo = new JSONObject();
		memberInfo.put("name", "일지매");
		memberInfo.put("age", 35);
		memberInfo.put("job", "의적");
		memArray.add(memberInfo);
		memberInfo = new JSONObject();
		memberInfo.put("name", "김철수");
		memberInfo.put("age", 37);
		memberInfo.put("job", "영업부장");
		memArray.add(memberInfo);
		memberInfo = new JSONObject();
		memberInfo.put("name", "이영희"); // name이라는 키에 이영희라는 값을 입력
		memberInfo.put("age", 25);
		memberInfo.put("job", "사무원");
		memArray.add(memberInfo);
		jObject.put("member", memArray);
		JSONArray bookArray = new JSONArray();
		JSONObject bookInfo = new JSONObject();
		bookInfo.put("title", "Node.js 프로그래밍");
		bookInfo.put("writer", "한빛 미디어 : 윤인성");
		bookInfo.put("image", "http://localhost:8090/jspetc/images/node.jpg");
		bookArray.add(bookInfo);
		bookInfo = new JSONObject();
		bookInfo.put("title", "모던 웹을 위한 JavaScript JQuery 입문");
		bookInfo.put("writer", "한빛 미디어 : 윤인성");
		bookInfo.put("image", "http://localhost:8090/jspetc/images/jajq.png");
		bookArray.add(bookInfo);
		jObject.put("books", bookArray);
		String jsonInfo = jObject.toJSONString();
		out.print(jsonInfo);
	}

}
