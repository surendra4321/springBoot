<!DOCTYPE html>
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
	<br/>  	<br/>
  	<img src="https://cdn-icons-png.flaticon.com/512/5455/5455873.png" style="height: 200px;">
  	&nbsp; 	&nbsp; 	&nbsp;
  	<img src="https://cdn-icons-png.flaticon.com/512/5455/5455873.png" style="height: 200px;">
  	  <hr/>
  		<div style="width: 50%">
  		<span>${message}</span>
  		<form action="csignup" method="post">
  		     <label>Username :</label> 
  		     <input type="text" name="username"  class="form-control">
  		      <label>Password :</label> 
  		     <input type="text" name="password"  class="form-control">
  		      <label>Email :</label> 
  		     <input type="email" name="email"  class="form-control">
  		      <label>Gender :</label> 
  		     <select  name="gender"  class="form-control">
  		           <option>Male</option>
  		           <option>Female</option>
  		     </select>
  		     <br/>
  		     <button type="submit"  class="btn btn-primary">Signup</button>
  		     
  		          <button type="reset"  class="btn btn-primary">Clear</button>
  		          
  		          <a href="showSignups">
  		            <button type="button"  class="btn btn-danger">SHOW ALL DATA</button>
  		            </a>
  		     </form>
  		</div> 
  </div>
 
</body>
</html>