<%-- 
    Document   : proheader
    Created on : Apr 23, 2018, 1:00:25 PM
    Author     : Pasindu
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UOC Sport Management System and Ground booking System</title>

        <!-- <title>Free Snow Bootstrap Website Template | Home :: w3layouts</title> -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <!-- <script src="js/jquery.easydropdown.js"></script> -->
        <!--start slider -->
        <link rel="stylesheet" href="css/fwslider.css" media="all">
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/fwslider.js"></script>
        <!--end slider -->
        <script type="text/javascript">
            $(document).ready(function () {
                $(".dropdown img.flag").addClass("flagvisibility");

                $(".dropdown dt a").click(function () {
                    $(".dropdown dd ul").toggle();
                });

                $(".dropdown dd ul li a").click(function () {
                    var text = $(this).html();
                    $(".dropdown dt a span").html(text);
                    $(".dropdown dd ul").hide();
                    $("#result").html("Selected value is: " + getSelectedValue("sample"));
                });

                function getSelectedValue(id) {
                    return $("#" + id).find("dt a span.value").html();
                }

                $(document).bind('click', function (e) {
                    var $clicked = $(e.target);
                    if (!$clicked.parents().hasClass("dropdown"))
                        $(".dropdown dd ul").hide();
                });


                $("#flagSwitcher").click(function () {
                    $(".dropdown img.flag").toggleClass("flagvisibility");
                });
            });
        </script>

    </head>
    <body>


        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-left">
                            <!--                            <div class="logo">
                                                            <a href="index.html"><img src="images/logo.png" alt=""/></a>
                                                        </div>-->
                            <div class="menu">
                                <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
                                <ul class="nav" id="nav">
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="About.jsp">About</a></li>
                                    <li><a href="Sports.jsp">Sports</a></li>

                                    <li><a href="Calendar.jsp">Calendar</a></li>
                                    <li><a href="Forum.jsp">Forum</a></li>
                                    <!--<li><a href="Registration.jsp">Register</a></li>-->
                                    <!--<li><a href="Login.jsp">Logout</a></li>-->

                                    <li><form method="post" action="Logout">
                                            <!--<li><a href="Login.jsp">RLogout</a></li>-->   
                                            <li><input type="submit" value="Logout"></li>   
                                            <li><button></button></li>   


                                        </form></li>

                                    <div class="clear"></div>
                                </ul>
                                <script type="text/javascript" src="js/responsive-nav.js"></script>
                            </div>                          
                            <div class="clear"></div>
                        </div>
                        <div class="header_right">
                            <!-- start search-->
                            <div class="search-box">
                                <div id="sb-search" class="sb-search">
                                    <form>
                                        <input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
                                        <input class="sb-search-submit" type="submit" value="">
                                        <span class="sb-icon-search"> </span>
                                    </form>
                                </div>
                                <div class="menu">
                                    <!--   <li><a class="action-btn" >
                                                                                <i class="material-icons">Profile</i>
                                                                            </a></li>-->
                                                              <!--<a href="Staff.jsp">${username}</a>-->
                                    <!--<li><a href="ProFilter.jsp">Profile</a></li>-->


                                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                                        <button type="button" class="btn btn-primary">Primary</button>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                                            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 37px, 0px);">
                                                <a class="dropdown-item" href="#">Dropdown link</a>
                                                <a class="dropdown-item" href="#">Dropdown link</a>
                                            </div>
                                        </div>
                                    </div>
<!--                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" id="dropdown1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown1</a>
                                        <ul class="dropdown-menu" aria-labelledby="dropdown1">
                                            <li class="dropdown-item" href="#"><a>Action 1</a></li>
                                            <li class="dropdown-item dropdown">
                                                <a class="dropdown-toggle" id="dropdown1-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown1.1</a>
                                                <ul class="dropdown-menu" aria-labelledby="dropdown1-1">
                                                    <li class="dropdown-item" href="#"><a>Action 1.1</a></li>
                                                    <li class="dropdown-item dropdown">
                                                        <a class="dropdown-toggle" id="dropdown1-1-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown1.1.1</a>
                                                        <ul class="dropdown-menu" aria-labelledby="dropdown1-1-1">
                                                            <li class="dropdown-item" href="#"><a>Action 1.1.1</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>-->


                                </div>

                            </div>
                            <!----search-scripts---->
                            <script src="js/classie.js"></script>
                            <script src="js/uisearch.js"></script>
                            <script>
            new UISearch(document.getElementById('sb-search'));
                            </script>
                            <!----//search-scripts---->
                            <!--                            <ul class="icon1 sub-icon1 profile_img">
                                                            <li><a class="active-icon c1" href="#"> </a>
                                                                <ul class="sub-icon1 list">
                                                                    <div class="product_control_buttons">
                                                                        <a href="#"><img src="images/edit.png" alt=""/></a>
                                                                        <a href="#"><img src="images/close_edit.png" alt=""/></a>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                    <li class="list_img"><img src="images/1.jpg" alt=""/></li>
                                                                    <li class="list_desc"><h4><a href="#">velit esse molestie</a></h4><span class="actual">1 x
                                                                            $12.00</span></li>
                                                                    <div class="login_buttons">
                                                                        <div class="check_button"><a href="checkout.html">Check out</a></div>
                                                                        <div class="login_button"><a href="login.html">Login</a></div>
                                                                        <div class="clear"></div>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                </ul>
                                                            </li>
                                                        </ul>-->
                            <div class="clear"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
