import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        Integer count = (Integer) session.getAttribute("count");

        if (count == null) {
            session.setAttribute("count", 1);
            count = 1;
        } else {
            session.setAttribute("count", count + 1);
        }

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");

        PrintWriter pw = resp.getWriter();

        pw.println("<html>");
        pw.println("<h1> Hello, " + name + " " + surname + " </h1>");
        pw.println("<h3> Your count in this page is: " + count + " </h3>");
        pw.println("</html>");

    }
}
