package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAL.AdminDAL;
import Models.LoginModels;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher=this.getServletContext().getRequestDispatcher("/WEB-INF/Admin/Login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get parameters
		String UserName=request.getParameter("UserName");
		String Password=request.getParameter("Password");
		
		// Check Login
		LoginModels login=AdminDAL.Login(UserName, Password);
		
		// Login does not exist
		if(login == null){
			response.sendRedirect("Login?errorMessage=-1");
			return;
		}
		// Login success, paste username into session
		request.getSession().setAttribute("Login", login.getName());
		
		// Redirect to Home page
		RequestDispatcher dispatcher= this.getServletContext().getRequestDispatcher("/WEB-INF/Admin/Home.jsp");
		dispatcher.forward(request, response);
	}

}
