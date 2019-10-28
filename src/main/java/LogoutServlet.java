import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie loginCookie = null;
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(Cookie cookie: cookies){
                if(cookie.getName().equals("JSESSIONID")){
                    System.out.println("JSESSIONID" + cookie.getValue());
                    break;
                }

            }
        }
        HttpSession session = request.getSession(false);
        System.out.println("User="+session.getAttribute("login"));
        if(session != null){
            session.invalidate();
        }
        response.sendRedirect("/jsp/login.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
