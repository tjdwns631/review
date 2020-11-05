package stream;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadServ")
@MultipartConfig(maxFileSize=1024*1024*2  	//size of any uploaded file
,maxRequestSize = 1024*1024*10  //overall size of all uploaded files
,location="d:/img"
,fileSizeThreshold = 1024
)
public class UploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UploadServ() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//업로드 위치를 현재 컨텍스트에 
		String appPath = request.getServletContext().getRealPath("/images");
		System.out.println(appPath);
	
		
		
		for (Part part : request.getParts()) {
//		Part part = request.getPart("file"); // 단건인 경우  name 속성 넣어주면됨
			String fileName = extractFileName(part);
			if(!fileName.equals("")) {
				//파일명 중복체크
				String uploadFile = appPath + File.separator + fileName;
				File renameFile= FileRenamePolicy.rename(new File(uploadFile));
				part.write(renameFile.getAbsolutePath());
				
			}
		}
	}
		
		private String extractFileName(Part part) {
			String contentDisp = part.getHeader("content-disposition");
			String[] items = contentDisp.split(";");
			for (String s : items) {
				if (s.trim().startsWith("filename")) {
					return s.substring(s.indexOf("=") + 2, s.length() - 1);
				}
			}
			return "";
		}
	
	}

