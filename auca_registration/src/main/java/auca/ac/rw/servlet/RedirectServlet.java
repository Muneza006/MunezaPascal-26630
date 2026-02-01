package auca.ac.rw.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/redirect")
public class RedirectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String searchQuery = request.getParameter("searchQuery");
        
        // Check if search query is provided
        if (searchQuery == null || searchQuery.trim().isEmpty()) {
            response.sendRedirect("redirect.jsp?error=empty");
            return;
        }
        
        // Redirect to Google with the search query
        String googleURL = "https://www.google.com/search?q=" + 
                          java.net.URLEncoder.encode(searchQuery, "UTF-8");
        response.sendRedirect(googleURL);
    }
}
