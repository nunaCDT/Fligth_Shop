<%-- 
    Document   : testRegistration01
    Created on : 08.07.2019, 11:55:51
    Author     : DPorter,SBopp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/css/main.css" />

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <title>register form</title>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="home.jsp">DBP Flight Shop</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="about.jsp">ABOUT</a></li>
                        <li><a href="services.jsp">SERVICES</a></li>
                        <li><a href="#portfolio">PORTFOLIO</a></li>
                        <li><a href="contact.jsp">CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container-fluid text-center bg-grey ">
            <div class="signup-form">
                <form action="registerSubmit.jsp" method="post">
                    <h2>Register</h2>
                    <p class="hint-text">Create your account. It's free and only takes a minute.</p>
                    <!-- 2 empty sections in the right -->
                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-3">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-3"><input type="text" class="form-control" name="nname" placeholder="First Name" required="required"></div>
                                    <div class="col-xs-3"><input type="text" class="form-control" name="vname" placeholder="Last Name" required="required"></div>
                                </div>        	
                            </div>
                            <div class="col-sm-2">
                                <!-- 2 empty sections in the right -->
                            </div>
                        </div>
                    </div>
                   

                    <!-- 2 empty sections in the right -->
                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-3">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <input type="text" class="form-control" name="email" placeholder="Email" required="required">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <!-- 2 empty sections in the right -->
                            </div>
                        </div>
                    </div>  
                    
                     
                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-3">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <input type="text" class="form-control" name="phone" placeholder="Phone">
                                    </div>
                                </div>
                            </div>  
                            <div class="col-sm-2">
                                <!-- 2 empty sections in the right -->
                            </div>
                        </div>
                    </div>

                    <!-- 2 empty sections in the right -->
                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-3">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <input type="text" class="form-control" name="u" placeholder="User name" required="required">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <!-- 2 empty sections in the right -->
                            </div>
                        </div>
                    </div>    

                    <!-- 2 empty sections in the right -->
                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-3">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <input type="password" class="form-control" name="p" placeholder="Password" required="required">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <!-- 2 empty sections in the right -->
                            </div>
                        </div>
                    </div> 
                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-3">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <input type="password" class="form-control" name="p1" placeholder="Confirm Password" required="required">
                                    </div>
                                </div>
                            </div>  
                            <div class="col-sm-2">
                                <!-- 2 empty sections in the right -->
                            </div>
                        </div>
                    </div> 

                    <div class="container">
                        <div class="row">  
                            <div class="col-sm-3">
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <button type="submit" class="btn btn-lg register-button-background">Register Now</button>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <!-- 2 empty sections in the right -->
                            </div>
                        </div>
                    </div>
                </form>
                
            </div>
        </div>
        <!--<div class="container">            
            <div class="footer">
                <footer class="container-fluid text-center">
                    <a href="#home.jsp" title="To Top">
                        <span class="glyphicon glyphicon-chevron-up"></span>
                    </a>
                    <p>&copy; Copyright D.Porter, E.Dicu, N.Bopp - <a href="https://www.dbpflightshop.de" title="Visit us">www.dbpflightshop.de</a></p> 
                </footer> 
            </div>
        </div>-->
    </body>
</html>
