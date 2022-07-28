<%-- 
    Document   : Edit_Profile_User
    Created on : Mar 17, 2022, 5:42:46 PM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <title>Edit Profile User</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/startupbitz","root","");
                
                
                Statement st = cn.createStatement();
                
                
                ResultSet rs = st.executeQuery("select user_name, password, email from user_people where uid="+session.getAttribute("uid"));
                
                if(rs.next()){
                    String uname = rs.getString(1);
                    String pass = rs.getString(2);
                    String email = rs.getString(3);
                    
                    %>
        <section>
        <div class="container mt-5 col-lg-5" style="background-color: #f7f7f7;">
            <div style="padding-top:20px;">
                <h3 class="text-center" >Edit Profile</h3>
            </div>
            
            <form class="mt-4" method="post" id="form" onsubmit="valid()" action="Update_User.jsp">
                <div class="form-floating mb-3">
                    <input type="text" name="uname" value="<%=uname%>" class="form-control" id="floatingInput" placeholder="name@example.com" required>
                    <label for="floatingInput">User name</label>
                  </div>
                <div class="form-floating mb-3">
                    <input type="email" name="email" value="<%=email%>" class="form-control" id="floatingInput" placeholder="name@example.com" required>
                    <label for="floatingInput">Email</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input type="password" name="pass" value="<%=pass%>" class="form-control" id="pass" placeholder="Password" required>
                    <label for="floatingPassword">Password</label>
                  </div>
                 <div class="form-group text-center mb-3">
                     <input  type="submit" class="btn btn-primary" name="btn" value="Update">
                  </div>
                <div style="padding-bottom: 10px;"></div>     
            </form>
        </div>
        </section>
                    <%
                }
                else{
                    out.print("Data Not Found!");
                }
            }
            catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
