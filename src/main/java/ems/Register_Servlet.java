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

@WebServlet(urlPatterns = "/reg")
public class Register_Servlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String phno = req.getParameter("phno");

		System.out.println(id);
		System.out.println(name);
		System.out.println(email);
		System.out.println(password);
		System.out.println(phno);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "root");
			PreparedStatement ps = con.prepareStatement("insert into emp values(?,?,?,?,?)");
			ps.setInt(1, Integer.parseInt(id));
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setInt(5, Integer.parseInt(phno));
			int row = ps.executeUpdate();
			System.out.println(row + ": Row Insertedd...");
			ps.close();
			con.close();

			PrintWriter pw = resp.getWriter();
			pw.write("<html><body><center><h1>Registration Successfull!</center></h1></body></html>");

			RequestDispatcher rd = req.getRequestDispatcher("reg.jsp");
			rd.include(req, resp);

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

	}

}
