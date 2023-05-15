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

@WebServlet("/json2")
public class JsonServlet2 extends HttpServlet {

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
		String jsonInfo = jObject.toJSONString();
		out.print(jsonInfo);
	}

}
