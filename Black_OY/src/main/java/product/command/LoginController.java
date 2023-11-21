package product.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.domain.LogOnDTO;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    } // LoginController

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	} // doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LogOnDTO dto = (LogOnDTO) request.getSession().getAttribute("logOn");
		boolean logIn = false;
		if (dto != null) {
			logIn = true;
			response.getWriter().write(Boolean.toString(logIn));
		}
		response.getWriter().write(Boolean.toString(logIn));
		doGet(request, response);
	} // doPost

}
