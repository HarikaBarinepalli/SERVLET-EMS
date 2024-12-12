package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/reg",loadOnStartup = 1)
public class RegisterServlet extends HttpServlet {
	   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Registartion dopost().....");
		 String id=req.getParameter("id");
		 String name=req.getParameter("name");
		 String email=req.getParameter("email");
		 String password=req.getParameter("password");
		 String sal=req.getParameter("sal");
		 String dno=req.getParameter("dno");
//		 
//		 System.out.println(id);
//		 System.out.println(name);
//		 System.out.println(sal);
//		 System.out.println(password);
//		 System.out.println(email);
//		 System.out.println(dno);//to print on console
		 PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h1 id='msg'>Registration Successfully</h1></body></html>");//to print on web page 
			

			RequestDispatcher rd= req.getRequestDispatcher("index.jsp");
			rd.include(req, resp);
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Root");
			PreparedStatement ps=con.prepareStatement("insert into emp values(?,?,?,?,?,?)");
			ps.setInt(1, Integer.parseInt(id));
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setDouble(5, Double.parseDouble(sal));
			ps.setInt(6, Integer.parseInt(dno));
			int row=ps.executeUpdate();
			System.out.println(row+"Row inseted...");
			ps.close();
			con.close();
			
			
			

		} catch (ClassNotFoundException | SQLException e) {
			
			 e.printStackTrace();
		}
		 
	   }

}
