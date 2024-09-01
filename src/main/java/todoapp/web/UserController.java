package todoapp.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todoapp.dao.SendEmailDao;
import todoapp.dao.UserDao;
import todoapp.model.User;

@WebServlet("/register")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	private SendEmailDao emaildao;
	private String host;
	private String port;
	private String user;
	private String pass;

	@Override
	public void init() {
		userDao = new UserDao();
		emaildao = new SendEmailDao();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		register(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("register/register.jsp");
	}

	private void register(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String userEmail = request.getParameter("email");
		String subject = "To Do Regsitration";
		String content = "Hi <br>Here are your login details <br> username: " + username + "<br>" + "password:"
				+ password;

		User employee = new User();
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setUsername(username);
		employee.setPassword(password);
		employee.setEmail(userEmail);

		try {
			int result = userDao.registerEmployee(employee);
			if (result == 1) {

				ServletContext context = getServletContext();
				host = context.getInitParameter("host");
				port = context.getInitParameter("port");
				user = context.getInitParameter("user");
				pass = context.getInitParameter("pass");

				var isSent = emaildao.sendEmail(host, port, user, pass, userEmail, subject, content);
				if (isSent) {
					request.setAttribute("NOTIFICATION", "Registration is Successful. Please check the email");
				} else {
					request.setAttribute("NOTIFICATION",
							"Registration is Successful but email is not sent as email doesnt exists");
				}

			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
		dispatcher.forward(request, response);
	}
}
