<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cntrl_menuBar.ascx.cs" Inherits="JooteyWala.Web.General.Cntrl_menuBar" %>



<div class="wrap">
    <!-- start header menu -->
    <ul class="megamenu skyblue">
        <li><a class="color1" href="Home.aspx">Home</a></li>
        <li class="grid">
            <a class="color2" href="#">Men</a>
            <div class="megapanel">
                <div class="row">
                <div class="col1">
                    <div class="h_nav">
                        <h4>popular</h4>
                        <ul>
                            <li><a href="ProductList.aspx">new arrivals</a></li>
                            <li><a href="shop.html">men</a></li>
                            <li><a href="shop.html">women</a></li>
                            <li><a href="shop.html">accessories</a></li>
                            <li><a href="shop.html">kids</a></li>
                            <li><a href="shop.html">login</a></li>
                        </ul>
                    </div>
                    <div class="h_nav">
                        <h4 class="top">men</h4>
                        <ul>
                            <li><a href="shop.html">new arrivals</a></li>
                            <li><a href="shop.html">men</a></li>
                            <li><a href="shop.html">women</a></li>
                            <li><a href="shop.html">accessories</a></li>
                            <li><a href="shop.html">kids</a></li>
                            <li><a href="shop.html">style videos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col1">
                    <div class="h_nav">
                        <h4>style zone</h4>
                        <ul>
                            <li><a href="shop.html">men</a></li>
                            <li><a href="shop.html">women</a></li>
                            <li><a href="shop.html">accessories</a></li>
                            <li><a href="shop.html">kids</a></li>
                            <li><a href="shop.html">brands</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col1"></div>
                <div class="col1"></div>
                <div class="col1"></div>
                <div class="col1"></div>
                <img src="../images/nav_img.jpg" alt=""/>
                </div>
            </div>
        </li>
        <li class="active grid">
            <a class="color4" href="#">Women</a>
            <div class="megapanel">
                <div class="row">
                <div class="col1">
                    <div class="h_nav">
                        <h4>shop</h4>
                        <ul>
                            <li><a href="shop.html">new arrivals</a></li>
                            <li><a href="shop.html">men</a></li>
                            <li><a href="shop.html">women</a></li>
                            <li><a href="shop.html">accessories</a></li>
                            <li><a href="shop.html">kids</a></li>
                            <li><a href="shop.html">brands</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col1">
                    <div class="h_nav">
                        <h4>help</h4>
                        <ul>
                            <li><a href="shop.html">trends</a></li>
                            <li><a href="shop.html">sale</a></li>
                            <li><a href="shop.html">style videos</a></li>
                            <li><a href="shop.html">accessories</a></li>
                            <li><a href="shop.html">kids</a></li>
                            <li><a href="shop.html">style videos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col1">
                    <div class="h_nav">
                        <h4>my company</h4>
                        <ul>
                            <li><a href="shop.html">trends</a></li>
                            <li><a href="shop.html">sale</a></li>
                            <li><a href="shop.html">style videos</a></li>
                            <li><a href="shop.html">accessories</a></li>
                            <li><a href="shop.html">kids</a></li>
                            <li><a href="shop.html">style videos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col1">
                    <div class="h_nav">
                        <h4>account</h4>
                        <ul>
                            <li><a href="shop.html">login</a></li>
                            <li><a href="shop.html">create an account</a></li>
                            <li><a href="shop.html">create wishlist</a></li>
                            <li><a href="shop.html">my shopping bag</a></li>
                            <li><a href="shop.html">brands</a></li>
                            <li><a href="shop.html">create wishlist</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col1">
                    <div class="h_nav">
                        <h4>popular</h4>
                        <ul>
                            <li><a href="shop.html">new arrivals</a></li>
                            <li><a href="shop.html">men</a></li>
                            <li><a href="shop.html">women</a></li>
                            <li><a href="shop.html">accessories</a></li>
                            <li><a href="shop.html">kids</a></li>
                            <li><a href="shop.html">style videos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col1">
                    <div class="h_nav">
                        <img src="../images/nav_img1.jpg" alt=""/>
                    </div>
                </div>
                </div>
                <div class="row">
                <div class="col2"></div>
                <div class="col1"></div>
                <div class="col1"></div>
                <div class="col1"></div>
                <div class="col1"></div>
                </div>
            </div>
        </li>
        <li class="search float-lt">
            <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';"
                                            onblur="if (this.value == '') {this.value = 'Search';}"/>
            <input type="submit" value="Subscribe" id="submit1" name="submit"/>
        </li>
    </ul>
    <div class="clear"></div>
</div>