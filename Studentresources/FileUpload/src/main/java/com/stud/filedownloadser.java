package com.stud;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class filedownloadser
 */
@WebServlet("/Filedown")
public class filedownloadser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DownloadFile downloadfile;
	
	public void init() {
    	downloadfile = new DownloadFile();
    }
	
    public filedownloadser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		downloadfile.downloa();
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
