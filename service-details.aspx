<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="service-details.aspx.cs" Inherits="weddservice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>
        <!--Page Title-->
        <section class="page-title" style="background-image: url(img/background2.jpg)">
            <div class="auto-container">
                <h1> <asp:Label ID="lblservicename" runat="server"></asp:Label></h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li> <asp:Label ID="lblservicename1" runat="server"></asp:Label></li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->
        <!--Services Single Section-->
        <section class="services-single-section">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Services Block Six-->
                    <div class="services-block-six  col-lg-2 col-md-3 col-sm-4 col-xs-12">
                        <div class="inner-box">

                            <h3>WEDDING<br>
                                PHOTOGRAPHY</h3>
                        </div>
                        <div class="overlay-box">
                            <div class="image-outer">
                                <div class="image-layer" style="background-image: url(img/service4.jpg)"></div>
                            </div>
                            <div class="content-box">

                                <h3><a href="#">WEDDING<br>
                                    PHOTOGRAPHY</a></h3>
                            </div>
                        </div>
                    </div>

                    <!--Services Block Six-->
                    <div class="services-block-six col-lg-2 col-md-3 col-sm-4 col-xs-12">
                        <div class="inner-box">

                            <h3>PRE-WEDDING<br>
                                PHOTOGRAPHY</h3>
                        </div>
                        <div class="overlay-box">
                            <div class="image-outer">
                                <div class="image-layer" style="background-image: url(img/service11.jpg)"></div>
                            </div>
                            <div class="content-box">

                                <h3><a href="#">PRE-WEDDING<br>
                                    PHOTOGRAPHY</a></h3>
                            </div>
                        </div>
                    </div>

                    <!--Services Block Six-->
                    <div class="services-block-six col-lg-2 col-md-3 col-sm-4 col-xs-12">
                        <div class="inner-box">

                            <h3>CANDID<br>
                                SHOOT</h3>
                        </div>
                        <div class="overlay-box">
                            <div class="image-outer">
                                <div class="image-layer" style="background-image: url(img/service3.jpg)"></div>
                            </div>
                            <div class="content-box">

                                <h3><a href="#">CANDID<br>
                                    SHOOT</a></h3>
                            </div>
                        </div>
                    </div>

                    <!--Services Block Six-->
                    <div class="services-block-six col-lg-2 col-md-3 col-sm-4 col-xs-12">
                        <div class="inner-box">

                            <h3>RESTORATION OF<br>
                                PHOTOGRAPHS</h3>
                        </div>
                        <div class="overlay-box">
                            <div class="image-outer">
                                <div class="image-layer" style="background-image: url(img/service12.png)"></div>
                            </div>
                            <div class="content-box">

                                <h3><a href="#">RESTORATION OF<br>
                                    PHOTOGRAPHS </a></h3>
                            </div>
                        </div>
                    </div>

                    <!--Services Block Six-->
                    <div class="services-block-six col-lg-2 col-md-3 col-sm-4 col-xs-12">
                        <div class="inner-box">

                            <h3>FUNCTION
                                <br />
                                PHOTOGRAPHY</h3>
                        </div>
                        <div class="overlay-box">
                            <div class="image-outer">
                                <div class="image-layer" style="background-image: url(img/service13.jpg)"></div>
                            </div>
                            <div class="content-box">

                                <h3><a href="#">FUNCTION
                                    <br />
                                    PHOTOGRAPHY</a></h3>
                            </div>
                        </div>
                    </div>

                    <!--Services Block Six-->
                    <div class="services-block-six col-lg-2 col-md-3 col-sm-4 col-xs-12">
                        <div class="inner-box">

                            <h3>PASSPORT
                                <br>
                                PHOTOGRAPH</h3>
                        </div>
                        <div class="overlay-box">
                            <div class="image-outer">
                                <div class="image-layer" style="background-image: url(img/service15.jpg)"></div>
                            </div>
                            <div class="content-box">
                                <h3><a href="#">PASSPORT
                                    <br>
                                    PHOTOGRAPH</a></h3>
                            </div>
                        </div>
                    </div>

                </div>

                <!--Introduction Section-->
                <div class="introduction-section">
                    <div class="sec-title">
                        <div class="clearfix">
                            <div class="pull-left">
                                <h2>PHOTOGRAPHS</h2>
                                <div class="separator"></div>
                            </div>
                            <div class="pull-right">
                                <div class="text"><asp:label ID="lblheading" runat="server"></asp:label> </div>
                            </div>
                        </div>
                    </div>

                    <div class="row clearfix">

                        <!--Intro Video Column-->
                        <div class="intro-video-column col-md-6 col-sm-12 col-xs-12">
                            <div class="inner-column">
                                <div class="row clearfix">
                                    <div class="column col-md-6 col-sm-6 col-xs-12">
                                        <div class="image">
<%--                                            <img src="img/gallery11.jpg" alt="" style="height: 340px;" />--%>

                                            <asp:Image id="image2" runat="server" style="height: 340px;" />
                                        </div>
                                    </div>
                                    <div class="column col-md-6 col-sm-6 col-xs-12">
                                        <div class="image image-2">
<%--                                            <img src="img/wedd1.jpg" alt="" style="height: 235px;" />--%>
                                             <asp:Image id="image3" runat="server" style="height: 235px;" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="intro-content-column col-md-6 col-sm-12 col-xs-12">
                            <div class="inner-column">

                                <div class="column col-md-6 col-sm-6 col-xs-12">
                                    <div class="image">
<%--                                        <img src="img/wedd3.jpg" alt="" style="height: 175px; margin-bottom: 40px;" />--%>
                                         <asp:Image id="image4" runat="server" style="height: 175px; margin-bottom: 40px;" />
                                    </div>
                                </div>
                                <div class="column col-md-6 col-sm-6 col-xs-12">
                                    <div class="image image-2">
<%--                                        <img src="img/blog3.jpg" alt="" style="height: 340px;" />--%>

                               <asp:Image id="image5" runat="server" style="height: 340px;" />

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </section>
        <!--End Services Single Section-->


        <section class="special-section">
            <!--Title Box-->
            <div class="title-box">
                <div class="auto-container">
                    <div class="sec-title light">
                        <h2><asp:Label ID="lblservicename2" runat="server"></asp:Label></h2>
                        <div class="separator light"></div>
                    </div>
                </div>
            </div>
            <div class="auto-container">
                <!--Lower Content-->
                <div class="lower-content">
                    <div class="row clearfix">

                        <!--Content Column-->
                        <div class="content-column col-md-8 col-sm-12 col-xs-12">
                            <div class="inner-column">

                                <!--Category Info Tabs-->
                                <div class="category-info-tabs">
                                    <!--Category Tabs-->
                                    <div class="category-tabs tabs-box">

                                        <!--Tabs Container-->
                                        <div class="tabs-content">

                                            <!--Tab / Active Tab-->
                                            <div class="tab active-tab" id="prod-fb">
                                                <div class="content">
                                                    <div class="row clearfix">
                                                        <!--Image Category Column-->
                                                        <div class="image-category-column col-md-12 col-sm-12 col-xs-12">
                                                            <div class="inner">
                                                                <div class="image">
                                                                    <%--<img src="img/banner1.jpg" alt="" />--%>
                                                                    <asp:Image  ID="image1" runat="server"/>
                                                                </div>
                                                                <div class="text">

                                                                    <asp:Label ID="lblmaincontent" runat="server"></asp:Label>
<%--                                                                    How all this mistaken idea of denouncing pleasure and praising pain was born and we will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master builder of human happiness  is pleasure.--%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!--Form Column-->
                        <div class="form-column col-md-4 col-sm-12 col-xs-12">
                            <div class="inner-column">
                                <h2>Make an Appointment</h2>
                                <div class="form-box">

                                    <!-- Appointment Form -->
                                    <div class="appointment-form">
                                        <div class="row clearfix">
                                            
                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                    <input type="text" name="text" placeholder="Name" id="txtname" required="" runat="server" />
                                                </div>
                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                    <input type="text" name="text" placeholder="Phone" id="txtphone" required="" runat="server" />
                                                </div>
                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                    <input type="text" name="text" placeholder="Email" id="txtemail" required="" runat="server" />
                                                </div>

                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                    <asp:DropDownList ID="ddlseelectservice" runat="server"  class="custom-select-box">

                                                        <asp:ListItem Value="0">Select Service</asp:ListItem>
                                                        <asp:ListItem Value="1">WEDDING PHOTOGRAPHY</asp:ListItem>
                                                        <asp:ListItem Value="2">PRE-WEDDING PHOTOGRAPHY</asp:ListItem>
                                                        <asp:ListItem Value="3">CANDID SHOOT</asp:ListItem>
                                                        <asp:ListItem Value="4">RESTORATION OF PHOTGRAPHS</asp:ListItem>
                                                        <asp:ListItem Value="5">FUNCTION PHOTOGRAPHY</asp:ListItem>
                                                        <asp:ListItem Value="6">PASSPORT PHOTOGRAPH</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                    <input type="text" name="text" placeholder="Address" id="txtaddress" required="" runat="server" />
                                                </div>
                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                   <%-- <button class="theme-btn btn-style-two" type="submit" name="submit-form">Fix an Appointment</button>--%>
                                                     <asp:Button ID="btnsubmit" class="theme-btn btn-style-two" runat="server" Text="Submit Now" onclick="btnsubmit_Click"/>
                                                    <div class="text">* We will contact you as soon as possible.</div>
                                                </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>


        <!--Price Section-->
        <section class="price-section">
            <div class="auto-container">
                <!--Sec Title-->
                <div class="sec-title centered">
                    <h2>Plans & Prices</h2>
                    <div class="separator"></div>
                </div>
                <div class="inner-container">
                    <div class="clearfix">

                       <%-- <!--Price Block-->
                        <div class="price-block col-md-4 col-sm-6 col-xs-12">
                            <div class="inner-box">
                                <div class="circle-box"></div>
                                <div class="upper-box">
                                    <div class="title">Silver</div>
                                    <div class="price">₹:25,000</div>
                                </div>
                                <div class="lower-box">
                                    <ul>
                                       <li class="pricehed">FULL HD VIDEO</li>
                                        <li> + 3Hour video </li>
                                        <li> + Blue Ray disk Backup</li>

                                         <li class="pricehed">CANVERA ALBUM</li>
                                          <li> + 1st Sheet crystal</li>
                                          <li> + 2nd Sheet sparkal</li>
                                          <li>+ 28 Sheet NTR (Opec) Gloss</li>
                                    </ul>
                                    <a href="contact.aspx" class="theme-btn btn-style-two">SELECT PLAN</a>
                                </div>
                            </div>
                        </div>

                        <!--Price Block-->
                        <div class="price-block col-md-4 col-sm-6 col-xs-12">
                            <div class="inner-box">
                                <div class="circle-box"></div>
                                <div class="upper-box">
                                    <div class="title">Gold</div>
                                    <div class="price">₹:31,000</div>
                                </div>
                                <div class="lower-box">
                                    <ul>
                                       <li class="pricehed">FULL HD VIDEO</li>
                                        <li> + 4 Hour video extra edit</li>
                                        <li> + Blue Ray disk Backup Pendrive Difference(64GB)</li>

                                         <li class="pricehed">CANVERA ALBUM</li>
                                          <li> + 1st Sheet crystal</li>
                                          <li> + 2nd Sheet sparkal</li>
                                          <li>+ 38 Sheet NTR (Opec) Gloss</li>
                                    </ul>
                                    <a href="contact.aspx" class="theme-btn btn-style-two">SELECT PLAN</a>
                                </div>
                            </div>
                        </div>--%>
                        <asp:Repeater ID="rptplans" runat="server">
                            <ItemTemplate>

                        <!--Price Block-->
                        <div class="price-block  col-md-4 col-sm-6 col-xs-12">
                            <div class="inner-box">
                                <div class="circle-box"></div>
                                <div class="upper-box">
                                    <div class="title"><%# Eval("planname") %></div>
                                    <div class="price"><%# Eval("price") %></div>
                                </div>
                                <div class="lower-box">
                                    <ul>
                                        <li class="pricehed"><%# Eval("heading1") %></li>
                                        <li> <%# Eval("subhead1") %></li>
                                        <li><%# Eval("subhead2") %></li>

                                         <li class="pricehed"><%# Eval("heading2") %></li>
                                          <li> <%# Eval("subhead3") %></li>
                                          <li><%# Eval("subhead4") %></li>
                                          <li><%# Eval("subhead5") %></li>

                                          <li class="pricehed"><%# Eval("heading3") %></li>
                                          <li class="pricehed"><%# Eval("heading4") %></li> 
                                         <li class="pricehed"><%# Eval("heading5") %></li>
                                          <li class="pricehed"><%# Eval("heading6") %></li>
                                         <li class="pricehed"><%# Eval("heading7") %></li>
                                         <li class="pricehed"><%# Eval("heading8") %></li>
                                        
                                    </ul>
                                    <a href="contact.aspx" class="theme-btn btn-style-two">CONTACT US</a>
                                </div>
                            </div>
                        </div>

                            </ItemTemplate>
                        </asp:Repeater>
                       
                    </div>
                </div>
               
            </div>
              <div class="text-center">
                            <h3><span class="pricehed">Note:</span>75% Advance Compulsory</h3>
                        </div>

        </section>
        <!--End Price Section-->
    </div>
</asp:Content>

