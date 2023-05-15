package jspFile.ex02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.multipart.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet("/up.do")
public class FileUpload2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String encoding = "utf-8";
		if (ServletFileUpload.isMultipartContent(request)) {

		    DiskFileItemFactory factory = new DiskFileItemFactory();
		    factory.setSizeThreshold(MEMORY_THRESHOLD);
		    factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		    ServletFileUpload upload = new ServletFileUpload(factory);
		    upload.setFileSizeMax(MAX_FILE_SIZE);
		    upload.setSizeMax(MAX_REQUEST_SIZE);
		    String uploadPath = getServletContext().getRealPath("") 
		      + File.separator + UPLOAD_DIRECTORY;
		    File uploadDir = new File(uploadPath);
		    if (!uploadDir.exists()) {
		        uploadDir.mkdir();
		    }
		    List<FileItem> formItems = upload.parseRequest(request);
		    if (formItems != null && formItems.size() > 0) {
		        for (FileItem item : formItems) {
			    if (!item.isFormField()) {
			        String fileName = new File(item.getName()).getName();
			        String filePath = uploadPath + File.separator + fileName;
		                File storeFile = new File(filePath);
		                item.write(storeFile);
		                request.setAttribute("message", "File "
		                  + fileName + " has uploaded successfully!");
			    }
		        }
		    }
		
	}

}
