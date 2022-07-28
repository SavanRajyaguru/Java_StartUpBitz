<%-- 
    Document   : LogOut
    Created on : Mar 19, 2022, 3:55:15 PM
    Author     : Savan Rajyaguru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut Page</title>
        <script>
            history.forward();
        </script>
    </head>
    <body>
        <%
            session.invalidate();
            %>
                            <script> 
//                                alert('Change Email Address!');
                                window.location.href = "index.html";
                            </script>
                        <%
        %>
    </body>
</html>
