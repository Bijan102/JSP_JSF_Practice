package occ.cs272.ic15;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import beans.*;

/**
 * 
 * @author Stephen Gilbert
 * @version Spring 2016
 */
@WebServlet("/datebeanform")
public class DateBeanForm extends HttpServlet
{

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * 
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException
    {

        // Create a Session and an Application Object
        HttpSession session = request.getSession();
        ServletContext application = getServletContext();

        // Create the beans
        DateBean2 b1 = new DateBean2();
        DateBean2 b2 = new DateBean2();
        DateBean2 b3 = new DateBean2();

        // Populate and validate the beans
        String b1Str = request.getParameter("date01");
        String b2Str = request.getParameter("date02");
        String b3Str = request.getParameter("date");

        // Validate the requests (sort of)
        String nextPage = "/WEB-INF/InvalidDateBeanForm.html";
        if (b1Str != null && b2Str != null && b3Str != null
                && !"".equals(b1Str) && !"".equals(b2Str) && !"".equals(b3Str))
        {
            nextPage = "DateBeanForm2.jsp";

            // Populate the beans
            b1.setDate(b1Str);
            b2.setDate(b2Str);
            b3.setDate(b3Str);

            // Put them into the request, session and application
            request.setAttribute("b1", b1);
            session.setAttribute("b2", b2);
            application.setAttribute("b3", b3);
        }

        // Forward the request to the next page
        RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
        dispatcher.forward(request, response);
    }

   /**
     * Handles the HTTP <code>GET</code> method.
     * 
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException
    {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     * 
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException
    {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     */
    public String getServletInfo()
    {
        return "Short description";
    }

}
