package StudentForm;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

public class StudentForm extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String age = request.getParameter("age");

        response.setContentType("text/html");

        response.getWriter().println("<h2>Student Data Received</h2>");
        response.getWriter().println("Name: " + name + "<br>");
        response.getWriter().println("Age: " + age + "<br>");
        response.getWriter().println("Course: " + course);
    }
}