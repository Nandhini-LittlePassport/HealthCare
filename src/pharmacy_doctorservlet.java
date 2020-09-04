
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class pharmacy_doctorservlet
 */
@WebServlet("/pharmacy_doctorservlet")
public class pharmacy_doctorservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public pharmacy_doctorservlet() {
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
			ArrayList<String> medicine = new ArrayList<String>();
			response.setContentType("text/html;charset=UTF-8");
			medicine.add(request.getParameter("medicine1"));
			medicine.add(request.getParameter("medicine2"));
			medicine.add(request.getParameter("medicine3"));
			medicine.add(request.getParameter("medicine4"));
			medicine.add(request.getParameter("medicine5"));
			medicine.add(request.getParameter("medicine6"));
			medicine.add(request.getParameter("medicine7"));
			medicine.add(request.getParameter("medicine8"));
			medicine.add(request.getParameter("medicine9"));
			medicine.add(request.getParameter("medicine10"));

			while (medicine.remove(null)) {
			}
			while (medicine.remove("")) {
			}
			int j=1;
			System.out.println("medicine :" + medicine);
			HttpSession session = request.getSession();
			for (int i = 0; i < medicine.size(); i++) {
				if( (medicine.get(i).equals(""))) {
					medicine.remove(i);

				} else {				
					System.out.println("medicine" +""+j);
					session.setAttribute("medicine" + j, medicine.get(i));
					session.setAttribute("paymentstatus", "Done");
					j=j+1;
				}
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
