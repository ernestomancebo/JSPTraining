import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LogFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
        String testParam = config.getInitParameter("test-param");
        System.out.println("Test param: " + testParam);
    }

    public void doFilter(ServletRequest request, ServletResponse
                         response, FilterChain chain) throws IOException, ServletException {
        System.out.println("IP: " + request.getRemoteAddr() + ", Hora: "
                           + new Date().toString());
        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}
