/*3.MVC Program: This is Controller(Servlet)*/

package com.lti;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("test/html");
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		LoginBean bean=new LoginBean();
		bean.setName(name);
		bean.setPassword(password);
		request.setAttribute("bean", bean);
		
		boolean status=bean.validate();
		
		if(status){
			RequestDispatcher rd=request.getRequestDispatcher("login-success.jsp");
			rd.forward(request,response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("login-error.jsp");
			rd.forward(request,response);
		}
		
		
	}

}
