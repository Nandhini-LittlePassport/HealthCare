

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String UPLOAD_DIRECTORY = "C:\\Users\\Nandhini.devi\\eclipse-workspace\\FamilyTree\\WebContent\\files";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	// TODO Auto-generated method stub
    			try {
    				
    				response.setContentType("text/html;charset=UTF-8");
    				String name = request.getParameter("name");
    				String age=request.getParameter("age");
    				String BG = request.getParameter("BloodGroup");
    				String eid = request.getParameter("emailid");
    				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
    			    Date date = new Date();  
    			    System.out.println(formatter.format(date));  
    				String Todays_date=formatter.format(date);
    				String[] doctor = request.getParameterValues("doctor");
    				List list = Arrays.asList(doctor);
    				String delim = ",";
    				String doctorlist = String. join(delim, list); 				
    				String mno = request.getParameter("mno");
    				HttpSession session = request.getSession();
    				session.setAttribute("name", name);
    				session.setAttribute("age", age);
    				session.setAttribute("BG", BG);   				
    				session.setAttribute("doctorlist", doctorlist);
    				session.setAttribute("emailid", eid);
    				session.setAttribute("mno", mno);
    				session.setAttribute("Todays_date", Todays_date);
    				System.out.println("addname : "+name);
    				System.out.println("age : "+age);
    				System.out.println("BG : "+BG);
    				System.out.println("doctorlist : "+doctorlist);
    				System.out.println("mno : "+mno);
    				
    				PrintWriter out = response.getWriter();
    				out.println("<script type=\"text/javascript\">");
    				out.println("alert('Appointment Fixed Successfully');");
    				out.println("</script>");
    				response.sendRedirect("Patients.jsp");
    				

    			} catch (Exception e) {
    				System.out.println(e);
    			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	public static String stripExtension(final String s)
	{
	    return s != null && s.lastIndexOf(".") > 0 ? s.substring(0, s.lastIndexOf(".")) : s;
	}
}
