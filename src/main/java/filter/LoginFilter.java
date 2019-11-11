package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession(true);
        if ((session.getAttribute("current_user") != null)) {
            chain.doFilter(request, response);
            return;
        } else {
            Cookie[] cookies = req.getCookies();
            for (Cookie cookie : cookies) {
                if (cookie != null && cookie.getName().equals("email")) {
                    session.setAttribute("current_user", cookie.getValue());
                    chain.doFilter(request, response);
                    return;
                }
            }
        }
        resp.sendRedirect("/login");
    }

    @Override
    public void destroy() {

    }
}
