


/**
 * Servlet implementation class Fileupload
 */
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.extras.FileUploadDao;



/**
 * Servlet implementation class Fileupload
 */
@WebServlet("/Fileupload")
@MultipartConfig(maxFileSize = 16177215)
public class Fileupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private FileUploadDao fileUploadDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fileupload() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() {
    	fileUploadDao = new FileUploadDao();
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("hello");
		InputStream inputStream = null;
		String message = "";
		
//		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		try {
			Part item = request.getPart("file");
			String department1 = request.getParameter("department");
			String semester1 = request.getParameter("semester");
			String subject1 = request.getParameter("subject");
			String description1 = request.getParameter("description");
			System.out.println(department1);
			System.out.println(semester1);
			System.out.println(subject1);
			System.out.println(description1);
			if(item!=null) {
			
//				item.write(new File("C:\\Users\\Ujwal\\eclipse-workspace\\servlet\\StudentBuddy\\"+item.getName()));
			inputStream = item.getInputStream();
			
			int row = fileUploadDao.uploadFile(inputStream,department1,semester1,subject1,description1);
			if (row>0) {
				message = "file uploaded and saved to database";
			}
			PrintWriter out = response.getWriter();
//		    out.println("<h1>" + message + "</h1>");
			getServletContext().getRequestDispatcher("/upload.jsp").forward(request, response);;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		String message = "File uploaded";
	
	}

}
