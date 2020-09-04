
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				try {

					response.setContentType("text/html");
					String n = request.getParameter("userName");
					String enteredPwd = request.getParameter("psw");
					if (((n.equals("admin"))&&(enteredPwd.equals("password123")))|| ((n.equals("aaa"))&&(enteredPwd.equals("password123")))) {
						HttpSession session = request.getSession();
						session.setAttribute("uname", n);
						request.getRequestDispatcher("HomePage.jsp").forward(request, response);
					} else {
						request.getRequestDispatcher("SignIn_Fail.jsp").forward(request, response);
					}

				} catch (Exception e) {
					System.out.println(e);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
