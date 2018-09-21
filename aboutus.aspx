<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>
        <!--Page Title-->
        <section class="page-title" style="background-image: url(img/background2.jpg)">
            <div class="auto-container">
                <h1>About Us</h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>About Us</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->

        <!--Company Section-->
        <section class="company-section">
            <div class="auto-container">
                <!--Sec Title-->
                <div class="sec-title">
                    <h2>Our Overview</h2>
                    <div class="separator"></div>
                </div>
                <div class="row clearfix">

                    <!--Content Column-->
                    <div class="content-column col-md-5 col-sm-12 col-xs-12">
                        <div class="inner-column">
                            <h2>
                                <asp:Label ID="lblheading1" runat="server"></asp:Label><span class="aboutspan"><asp:Label ID="lblheading2" runat="server"></asp:Label></span>
                                <br>
                                <asp:Label ID="lblheading3" runat="server"></asp:Label>

                            </h2>
                            <div class="text">
                                <p class="text-justify">
                                    <asp:Label ID="lbldiscription" runat="server"></asp:Label>
                                </p>
                            </div>

                            <div class="author">
                                <asp:Label ID="lblheading4" runat="server" class="aboutauthor"></asp:Label><span>/<asp:Label ID="lblheading5" runat="server"></asp:Label></span>
                            </div>
                        </div>
                    </div>

                    <!--Founder Column-->
                    <div class="founder-column col-md-7 col-sm-12 col-xs-12">
                        <div class="inner-column">
                            <div class="row clearfix">
                                <!--Image Column-->
                                <div class="image-column col-lg-7 col-md-6 col-sm-6 col-xs-12">
                                    <asp:Repeater ID="rptaboutimage" runat="server">
                                        <ItemTemplate>
                                            <div class="image">
                                                <img src="<%# ResolveUrl(Eval("content").ToString()) %>" alt="" class="imgcompany" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <div class="founder-text">
                                        <asp:Label ID="lblheading6" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <!--Founder Content-->
                                <div class="founder-content-column col-lg-5 col-md-6 col-sm-6 col-xs-12">
                                    <div class="inner-column">
                                        <h3>Mission</h3>
                                        <div class="text">
                                            <asp:Label ID="lblmission" runat="server"></asp:Label></div>
                                        <h3>Vision</h3>
                                        <div class="text">
                                            <asp:Label ID="lblvision" runat="server"></asp:Label></div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!--End Company Section-->

        <!--Video Section-->
        <section class="video-section" style="background-image: url(images/background/4.jpg)">
            <div class="auto-container">
                <h2>Our concepts are <span class="theme_color">clear and beautiful</span>, Inspiring
                    <br>
                    features for your photography.</h2>
                <div class="text">We Provide best service for you.</div>
                <div class="row clearfix">

                    <!--Services Block-->
                    <div class="services-block-five col-md-3 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="icon-box">
                                <span class="icon flaticon-people-1"></span>
                            </div>
                            <h3><a href="#">Creative Designers</a></h3>
                        </div>
                    </div>

                    <!--Services Block-->
                    <div class="services-block-five col-md-3 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="icon-box">
                                <span class="icon flaticon-trophy-1"></span>
                            </div>
                            <h3><a href="#">Award Winners</a></h3>
                        </div>
                    </div>

                    <!--Services Block-->
                    <div class="services-block-five col-md-3 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="icon-box">
                                <span class="icon flaticon-quality"></span>
                            </div>
                            <h3><a href="#">Quality Products</a></h3>
                        </div>
                    </div>

                    <!--Services Block-->
                    <div class="services-block-five col-md-3 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="icon-box">
                                <span class="icon flaticon-support"></span>
                            </div>
                            <h3><a href="#">Customer Support</a></h3>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!--End Video Section-->

        <!--Team Section-->
        <section class="team-section">
            <div class="auto-container">
                <!--Sec Title-->
                <div class="sec-title centered">
                    <h2>Meet Our Team</h2>
                    <div class="separator"></div>
                </div>
                <div class="row clearfix">
                    <asp:Repeater ID="rptteam" runat="server">
                        <ItemTemplate>

                            <!--Team Block-->
                            <div class="team-block col-md-4 col-sm-6 col-xs-12">
                                <div class="inner-box">
                                    <div class="image">
                                        <img src="<%# ResolveUrl(Eval("img").ToString()) %>" alt="" />
                                        <div class="overlay-box">
                                            <div class="content">
                                                <div class="name">
                                                    <%# Eval("name1") %>
                                                    <br>
                                                    <%# Eval("name2") %>
                                                </div>
                                                <div class="designation"><%# Eval("designation") %></div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </ItemTemplate>

                    </asp:Repeater>
                </div>
            </div>
        </section>
        <!--End Team Section-->


    </div>

</asp:Content>

