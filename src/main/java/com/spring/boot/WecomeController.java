package com.spring.boot;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class WecomeController {

	@GetMapping("/clogin")
	public String showLogin() {
		  return "login"; // login.jsp
	}
	
	
	@GetMapping("/csignup")
	public String showSignup() {
		  return "signup"; // signup.jsp
	}
	
	
	@PostMapping("/csignup")
	public String posrCreate(HttpServletRequest request,Model model) {
		String uname=request.getParameter("username");
		String ppass=request.getParameter("password");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		
		try {
			  //Step-1 loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Step-2 Creating connection to database
			Connection conn=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/batch100_db","root","mysql@1234");
			//THIS CODE IS USED TO PUSH DATA INSIDE TABLE
			String sql="insert into signups_tbl(username,password, email,gender) values(?,?,?,?)";
			//Step-3 compiling query
			PreparedStatement pstmt=conn.prepareStatement(sql);
			//Step-4 - Setting the values in the query
			pstmt.setString(1, uname);
			pstmt.setString(2, ppass);
			pstmt.setString(3, email);
			pstmt.setString(4, gender);
			//Step-5 Fire the query
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//JDBC PROGRAMMING
		 model.addAttribute("message","Hey profile is created successfully");
		  return "signup"; // signup.jsp
	}
	
	
	@GetMapping("/showSignups")
	public String showSignups() {
		try {
			  //Step-1 loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Step-2 Creating connection to database
			Connection conn=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/batch100_db","root","mysql@1234");
			String sql="insert into signups_tbl(username,password, email,gender) values(?,?,?,?)";
			//Step-3 compiling query
			PreparedStatement pstmt=conn.prepareStatement(sql);
			//WRITE CODE TO FETCH ALL THE DATA FROM DATABASE
			String fecthData="select username, password , email,gender from signups_tbl";
			//Executing this query
			pstmt=conn.prepareStatement(fecthData);
			ResultSet rs=pstmt.executeQuery();
			
			//WHY?????
			DataStore.getSignupDTOs().clear();
			while(rs.next()) {
				String dusername= rs.getString(1);
				String dpassword= rs.getString(2);
				String demail= rs.getString(3);
				String dgender= rs.getString(4);
				
				//ONE ROW WE ARE SETTING INSIDE ONE INSTANCE OF SignupDTO 
				SignupDTO dto=new SignupDTO();
				dto.setEmail(demail);
				dto.setGender(dgender);
				dto.setPassword(dpassword);
				dto.setUsername(dusername);
				DataStore.getSignupDTOs().add(dto);
				//JDBC PROGRAMMING HERE TO SAVE DATA INSIDE DATABASE;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return "showSignups"; // showSignups.jsp
	}
	
}
