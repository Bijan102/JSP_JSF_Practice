package occ.cs272.ic15;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import beans.*;
/**
 * Servlet implementation class SelectColors
 */
@WebServlet("/selectColors")
public class SelectColors extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		synchronized(session)
		{
		    ColorBean colors = (ColorBean) session.getAttribute("colors");
		    if(colors == null)
		    {
		        colors = new ColorBean();
		        session.setAttribute("colors", colors);
		    }
		    colors.setForeground(request.getParameter("foreground"));
		    colors.setBackground(request.getParameter("background"));
		    
		    String address = "/WEB-INF/results/ex02-a.jsp";
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher(address);
            dispatcher.forward(request, response);
		}
	}

}
