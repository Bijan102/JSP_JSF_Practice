package occ.cs272.ic15;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import beans.*;

/**
 * Reads firstName and lastName request parameters and forwards to JSP page to
 * display them. Uses session-based bean sharing to remember previous values.
 */

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet
{
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        synchronized (session)
        {
            NameBean nameBean = (NameBean) session.getAttribute("name");
            if (nameBean == null)
            {
                nameBean = new NameBean();
                session.setAttribute("name", nameBean);
            }
            nameBean.setFirstName(request.getParameter("firstName"));
            nameBean.setLastName(request.getParameter("lastName"));
            
            
            String address = "/WEB-INF/results/show-name.jsp";
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
    }
}
