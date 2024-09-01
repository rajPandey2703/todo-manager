package todoapp.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import todoapp.dao.LoginDao;
import todoapp.model.LoginBean;

/**

 */

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	@Override
	public void init() {
		loginDao = new LoginDao();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("login/login.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		authenticate(request, response);
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(username);
		loginBean.setPassword(password);

		try {
			var authenticate = loginDao.validate(loginBean);
			if (authenticate != null) {
				if (authenticate.getIsAdmin()) {
					request.setAttribute("isAdmin", authenticate.getIsAdmin());
					RequestDispatcher dispatcher = request.getRequestDispatcher("admin/users.jsp");
					dispatcher.forward(request, response);
				} else {
					RequestDispatcher dispatcher = request.getRequestDispatcher("todo/todo-list.jsp");
					dispatcher.forward(request, response);

				}

			} else {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("login/login.jsp");

			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}
