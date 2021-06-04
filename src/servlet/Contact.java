package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

@WebServlet(urlPatterns= {"/servlet/contact"})
public class Contact extends HttpServlet{
	
	public void doPost(
			
			HttpServletRequest request, HttpServletResponse response
				
		)throws ServletException, IOException{
		
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out =response.getWriter();
			
			request.setCharacterEncoding("UTF-8");
			String name =request.getParameter("name");
			String company =request.getParameter("company");
			String mail =request.getParameter("mail");
			String content =request.getParameter("content");
			String[] checkbox=request.getParameterValues("checkbox3");
			String radio03=request.getParameter("radio03");
			

			out.println("名前は、"+name+"です。");
			out.println("所属会社は、"+company+"です。");
			out.println("メールアドレスは、"+mail+"です。");
			out.println("内容は、"+content+"です。");
			
			if(checkbox!=null) {
				for(String checked : checkbox) {
					out.println("メルマガの種類は、"+checked+"です。");
				 }
			 }
			
			if(radio03.equals("yes")) {
				request.getRequestDispatcher("../jsp/contact-out.jsp")
				.include(request, response);
			}else {
				request.getRequestDispatcher("../jsp/contact-out2.jsp")
				.include(request, response);
			}
			
			Page.footer(out);	
			
		}
	
	
	
}



