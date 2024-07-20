<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="loginReg.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
 <div class="contain">
 <h1>LOGIN</h1>
    <form>
      <div class="mb-3">
         <label for="exampleInputEmail1" class="form-label">Username</label>
         <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
         
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1">
      </div>
      <a type="submit" class="btn btn-primary" href="home.jsp" >Login</a>
         <p><a class="txt" href="index.jsp">Back to Home</a></p>
   </form> 
      <!--   <form>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Submit</button>
        </form> -->
</div>

</body>
</html>