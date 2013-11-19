import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AnotherPageServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if (req.getSession().getAttribute("username") == null) {
			resp.sendRedirect("/login");
			return;
		}

		req.getRequestDispatcher("WEB-INF/anotherPage.jsp").forward(req, resp);
	}
}