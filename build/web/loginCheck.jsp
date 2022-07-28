<%-- 
    Document   : loginCheck
    Created on : Mar 17, 2022, 3:17:11 PM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        
        <%
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/startupbitz","root","");
                
                
                PreparedStatement ps = cn.prepareStatement("select * from login where email=? and pass=?");
                ps.setString(1, uname);
                ps.setString(2, pass);
                
                ResultSet rs = ps.executeQuery();
                
                if(rs.next()){
                    if(rs.getString(3).equals("a")){
                        session.setAttribute("aid", rs.getString(2));
                         %>
                            
                            <script> 
//                                alert('Change Email Address!');
                                window.location.href = "Admin_Page.jsp";
                            </script>
                        <%
                    }
                    if(rs.getString(3).equals("u")){
                        session.setAttribute("uid", rs.getString(2));
                        
                        %>
                            
                            <script> 
//                                alert('Change Email Address!');
                                window.location.href = "homePage_User.jsp";
                            </script>
                        <%
                    }
                    else{
                        session.setAttribute("eid", rs.getString(2));
                       %>
                       
                            <script> 
//                                alert('Change Email Address!');
                                window.location.href = "homePage_Ent.jsp";
                            </script>
                        <% 
                    }
                }
                else{
                    %>
                       <script> 
                                alert('Incorrect Email or Password');
                                window.location.href = "index.html";
                        </script>     
                    <%
                }
            }
            catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
