package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.Gson;

import Models.LoginModels;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher=this.getServletContext().getRequestDispatcher("/WEB-INF/Admin/Home.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		//PrintWriter out = response.getWriter();
        //response.setCharacterEncoding("UTF-8");
        //response.setContentType("application/json;charset=utf-8");

		//LoginModels login=(LoginModels) request.getSession().getAttribute("Login");
		//Gson gson=new Gson();
		//String objectToReturn = gson.toJson(login);
        //out.write(objectToReturn);
        //out.flush();
	}
	

}
