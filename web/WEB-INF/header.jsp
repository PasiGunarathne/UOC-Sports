<%-- 
    Document   : header
    Created on : Apr 23, 2018, 8:37:35 AM
    Author     : Pasindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <div class="header">
                <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-left">
                            <div class="logo">
                                <a href="index.html"><img src="images/logo.png" alt=""/></a>
                            </div>
                            <div class="menu">
                                <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
                                <ul class="nav" id="nav">
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="About.jsp">About</a></li>
                                    <li><a href="History.jsp">History</a></li>
                                    <li><a href="Events.jsp">Events</a></li>
                                    <li><a href="Registration.jsp">Register</a></li>
                                    <li><a href="Login.jsp">Login</a></li>                              
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
                        </div>
                    </div>
                   <div class="clear"></div>
             </div>
            </div>
           </div>
        
