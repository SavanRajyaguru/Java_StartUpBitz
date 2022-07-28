<%-- 
    Document   : About
    Created on : Mar 19, 2022, 4:07:36 PM
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
        <title>About Us</title>
    </head>
    <body>
        <section>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <h4><a class="navbar-brand" href="#"><b>StartUpBitz</b></a></h4>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="Edit_Profile_User.jsp">Edit Profile</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="#">About Us</a>
                </li>
              </ul>
              <form class="d-flex"action="LogOut.jsp">
                <button class="btn btn-outline-success" type="submit">Log Out</button>
              </form>
            </div>
          </div>
        </nav>
            <div class="container mt-5 col-lg-10" style="background-color: #f7f7f7;">
                <div style="padding-top:20px;">
                    <h2 class="text-center" >About Us</h2>
                </div>
                
                <div class="form-group text-center mb-3">
                    <h4><p>
                        India is experiencing a start-up revolution as never before, with the rate of new venture formation reaching a crescendo. In order to encourage entrepreneurs, the Government of India announced a start-up policy named “Start-up India” in February 2016 with the intention of nurturing and promoting start-ups in the country. However, despite the high level of entrepreneurial spirit displayed by entrepreneurs and the support provided by the Central and State governments, we are seeing a very high rate of failure among the startups. Also, there is very less knowledge about startups in our territory.
The information available in various websites is not organized as there is no sector wise or industry wise startup data available nor it is provided free. There hardly exist any Application which eases these tasks.
To overcome above problem, we aim to develop a mobile application that will help people to gain knowledge about startups and their journey along with the details related to their investors and funding.
The App would be free to use and would not require any internet connection for its working.
The App would display various details about Indian startups in an organized way and the graphical interface will be smooth and easy so that people of any age-group can use and explore it.
We also aim to encourage students to think about the new startup ideas and enhance their leadership skills.
                        </p></h4>
                </div>
                 <div style="padding-bottom: 10px;"></div> 
            </div>
        </section>
    </body>
</html>
