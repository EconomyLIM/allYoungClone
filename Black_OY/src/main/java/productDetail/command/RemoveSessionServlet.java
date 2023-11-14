package productDetail.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/RemoveSessionServlet")
public class RemoveSessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sessionName = request.getParameter("sessionName");

        if (sessionName != null) {
            HttpSession session = request.getSession(false);
            if (session != null && sessionName.equals(session.getAttribute(sessionName))) {
                // 세션을 삭제
                session.invalidate();
                System.out.println("세션삭제");
            }
        }
    }
}
