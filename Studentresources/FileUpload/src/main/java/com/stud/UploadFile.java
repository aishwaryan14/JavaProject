package com.stud;

import java.util.List;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileExistsException;

@WebServlet("/Fileupl")
@MultipartConfig(maxFileSize = 16177215)
public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UploadFileDao fileUploadDao;
	
	public void init() {
    	fileUploadDao = new UploadFileDao();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		downloadfile.downloa();
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream inputStream = null;
		String message = "";
		
		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		try {
			List<FileItem> multifiles = sf.parseRequest(request);
			for(FileItem item:multifiles) {
				inputStream = item.getInputStream();
				int row = fileUploadDao.uploadFile(inputStream);
				if (row>0) {
					message = "file uploaded and saved to database";
				}
				//PrintWriter out = response.getWriter();
			    //out.println("<h1>" + message + "</h1>");
				
				request.setAttribute("Message", message);
				
				getServletContext().getRequestDispatcher("/message.jsp")
	            .forward(request, response);

			}
			System.out.println("File Uploaded");
		} catch (FileUploadException e) {
			e.printStackTrace();
		}catch(FileExistsException e) { 
			e.printStackTrace();
			System.out.println("File already exists");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
