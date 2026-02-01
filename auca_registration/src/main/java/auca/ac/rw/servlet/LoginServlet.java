package auca.ac.rw.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if username and password are provided
        if (username == null || username.trim().isEmpty() ||
            password == null || password.trim().isEmpty()) {
            out.println("<html><body>");
            out.println("<h3>Error: Username and Password are required!</h3>");
            out.println("<a href='login.jsp'>Go back to login</a>");
            out.println("</body></html>");
            return;
        }

        // Check password length (minimum 8 characters)
        if (password.length() < 8) {
            out.println("<html><body>");
            out.println("<h2>Hello " + username + ", your password is weak. Try a strong one.</h2>");
            out.println("<a href='login.jsp'>Go back to login</a>");
            out.println("</body></html>");
        } else {
            // Password is strong
            out.println("<html><body>");
            out.println("<h2>Welcome " + username + "</h2>");
            out.println("<a href='login.jsp'>Logout</a>");
            out.println("</body></html>");
        }
    }
}