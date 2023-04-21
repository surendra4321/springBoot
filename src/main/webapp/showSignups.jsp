<!DOCTYPE html>

<%@page import="com.spring.boot.DataStore"%>
<%@page import="com.spring.boot.SignupDTO"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

 <header style="background-color: yellow;height: 32px;">
 </header>
 
  <div class="container">
  		<h1>Welcome page!</h1>
  	
  		<img src="https://cdn-icons-png.flaticon.com/512/1969/1969565.png" style="height: 200px;">
  	
  	  <hr/>
  	  
  	  
  	 <%
  	List<SignupDTO> signupDTOs=DataStore.getSignupDTOs();
  	 
  	String colors[]={"yellow","green","pink"}; 
  	 int count=0;
  	 for(SignupDTO signupDTO :signupDTOs) {
  		 if(count==4){
  			count=0;
  		 }
  		 String ccolor="#bba7ff";
  		 if(count==1){
  			ccolor="yellow";
  		 }
  		 else  if(count==2){
  			ccolor="green";
  		 }
  		 else  if(count==3){
   			ccolor="pink";
   		 }
  		 count++;
  		 
  	 %> 
  		<h1 style="background-color: <%=ccolor%>;">Data
  		
  		           <a href="deleteData?username=<%=signupDTO.getUsername() %>" style="float: right;">
  		               <button type="button"  class="btn btn-primary">DELETE</button>
  		            </a>
  		</h1> 
  <h1>${message}</h1>
  <table class="table table-bordered">
      <tr>
        <td>Username</td>
        <td><b><%=signupDTO.getUsername()%></b></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><%=signupDTO.getPassword()%></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><b><%=signupDTO.getEmail()%></b></td>
      </tr>
      
        <tr>
        <td>Gender</td>
        <td><%=signupDTO.getGender()%></td>
      </tr>
      
  </table>
  
  <%
  	 }
  %>		
  </div>
 
</body>
</html>