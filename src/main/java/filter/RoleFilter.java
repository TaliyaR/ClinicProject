package filter;

import services.UserService;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RoleFilter implements Filter {
    UserService userService = new UserService();
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        if ((session.getAttribute("current_user") != null)) {
            String role = userService.getRoleByEmail((String) session.getAttribute("current_user"));
            if(role.equals("admin")){
                chain.doFilter(request, response);
                return;
            }
        }
        resp.sendRedirect("/edit");


        }
}
