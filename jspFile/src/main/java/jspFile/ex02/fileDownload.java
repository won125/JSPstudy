package jspFile.ex02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;


public class fileDownload extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String fileFolder = "C:\\myJSP\\files";
		String fileName = (String)request.getParameter("fileName");
		System.out.println("fileName = " + fileName);
		OutputStream outputStream = response.getOutputStream();
		String downFile = fileFolder + "\\" + fileName;
		File file = new File(downFile);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Content-disposition", "attachment;fileName="+fileName);
		FileInputStream inputStream = new FileInputStream(file);
		byte[] buffer = new byte[1024*8];
		while(true) {
			int count = inputStream.read(buffer);
			if(count == -1) {
				break;
			}
			outputStream.write(buffer,0,count)
		}
		inputStream.close();
		outputStream.close();
	}
}
