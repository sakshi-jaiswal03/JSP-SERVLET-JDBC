<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="loginReg.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
  <div class="contain">
    <h1>REGISTER</h1>
    <form action="register" method="post">
      <div class="mb-3">
         <label for="exampleInputEmail1" class="form-label">Email address</label>
         <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
         <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
      </div>
      <div class="mb-3">
         <label for="username" class="form-label">Username</label>
         <input type="text" name="username" class="form-control" id="username" aria-describedby=" ">
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Password</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
      </div>
      <button type="submit" class="btn btn-primary">Register</button>
       <p><a class="txt" href="index.jsp">Back to Home</a></p>
   </form> 
   
   <!-- <form action="loginservlet" method="post">
       <label for="username">Username:</label>
       <input type="text" placeholder="Enter Username" name="username">
        <label for="email">Email:</label>
       <input type="text" placeholder="Enter Email" name="email">
       <label for="password">Password:</label>
       <input type="password" placeholder="Enter Password" name="password">
       <button type="submit">Register</button>
       
       <p><a href="index.jsp">Back to Home</a></p>
   </form> -->
 </div>
</body>
</html>