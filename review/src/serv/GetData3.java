package serv;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/getData3")
public class GetData3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	List<BoardVO> list;
	@Override
	public void init(ServletConfig config) throws ServletException {

		list =new ArrayList<BoardVO>();
		list.add(new BoardVO("1","title1","conten1"));
		list.add(new BoardVO("2","title2","conten2"));
		list.add(new BoardVO("3","title3","conten3"));
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//json 변환
		int no = Integer.parseInt(request.getParameter("no"));
		request.setAttribute("board",list.get(no));
		request.getRequestDispatcher("Modalbody.jsp").forward(request, response);
	}
}
