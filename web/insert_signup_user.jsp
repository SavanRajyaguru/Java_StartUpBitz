<%-- 
    Document   : insert_signup_user
    Created on : Mar 13, 2022, 1:56:06 AM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Page User</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            String uname = request.getParameter("uname");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/startupbitz","root","");
                
                PreparedStatement c = cn.prepareStatement("select email from user_people where email=?");
                    c.setString(1,email);
                    ResultSet rs1 = c.executeQuery();
                    if(rs1.next())
                    {
                        %> 
                            <script> 
                                alert('Duplicate Email Address Found!');
                                window.location.href = "signup_user.jsp";
                            </script>
                        <%
                    }else{
                PreparedStatement ps = cn.prepareStatement("insert into user_people(user_name,password,email) values(?,?,?)");
                ps.setString(1, uname);
                ps.setString(2, pass);
                ps.setString(3, email);
                
                int result = ps.executeUpdate();
                
                if(result == 1){
                    PreparedStatement ps3 = cn.prepareStatement("select uid from user_people where email=? and password=?");
                    ps3.setString(1, email);
                    ps3.setString(2, pass);
                    
                    ResultSet rs = ps3.executeQuery();
                    if(rs.next()){
                        int uid = rs.getInt(1);
                        PreparedStatement ps1 = cn.prepareStatement("insert into login(rid,role,email,pass) values(?,?,?,?)");
                        ps1.setInt(1, uid);
                        ps1.setString(2, "u");
                        ps1.setString(3, email);
                        ps1.setString(4, pass);
                        
                        int result2 = ps1.executeUpdate();
                        if(result2 == 1){
                            
                            %> 
                            <script> 
                                alert('SignUp Successfully!');
                                window.location.href = "index.html";
                            </script>
                            <%       
                        }
                        else{
                            %> 
                            <script> 
                                alert('SignUp Unsuccessful!');
                                window.location.href = "signup_user.jsp";
                            </script>
                            <% 
                        }
                    }
                    
                }else{
                    out.println("NO");
                }
            }
            }
            catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
