<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="testi.aspx.cs" Inherits="testi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>

          <!--Page Title-->
        <section class="page-title" style="background-image:url(img/background2.jpg)">
            <div class="auto-container">
                <h1>Testimonials</h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>Testimonials</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->

        <!--Testimonial Section Two-->
        <section class="testimonial-section-two">
            <div class="auto-container">
                <div class="row clearfix">
                    <!--Column-->
                    <div class="column col-md-6 col-sm-6 col-xs-12">
                        <asp:Repeater ID="rpttestimonialleft" runat="server">
                        <ItemTemplate>
                        <!--Testimonial Block Two-->
                        <div class="testimonial-block-two">
                            <div class="inner-box">
                                <div class="content-box">
                                    <div class="content">
                                        <div class="quote-icon">
                                            <span class="icon flaticon-right-quote-symbol"></span>
                                        </div>
                                        <div class="text"><%# Eval("discription") %>  </div>
                                        <div class="curve"></div>
                                    </div>
                                </div>
                                <div class="lower-box">
                                    <h3><%# Eval("name") %></h3>
                                    <div class="locations"><%# Eval("location") %></div>
                                </div>
                            </div>
                        </div>
                            </ItemTemplate>
                            </asp:Repeater>

                      

                    </div>
                    <!--Column-->
                    <div class="column col-md-6 col-sm-6 col-xs-12">
                        <asp:Repeater ID="rpttestimonialright" runat="server">
                            <ItemTemplate>

                        <!--Testimonial Block Two-->
                        <div class="testimonial-block-two">
                            <div class="inner-box">
                                <div class="content-box">
                                    <div class="content">
                                        <div class="quote-icon">
                                            <span class="icon flaticon-right-quote-symbol"></span>
                                        </div>
                                        <div class="text"><%# Eval("discription") %></div>
                                        <div class="curve"></div>
                                    </div>
                                </div>
                                <div class="lower-box">
                                    <h3><%# Eval("name") %></h3>
                                    <div class="locations"><%# Eval("location") %></div>
                                </div>
                            </div>
                        </div>

                      </ItemTemplate>
                        </asp:Repeater>

                    </div>

                </div>
            </div>
        </section>
        <!--End Testimonial Section Two-->

        <!--Testimonial Section-->
        <section class="testimonial-section" style="background-image:url(images/background/pattern-2.png)">
            <div class="auto-container">
                <!--Title Box-->
                <div class="title-box">
                    <div class="row clearfix">
                        <div class="column col-md-4 col-sm-12 col-xs-12">
                            <div class="sec-title">
                                <h2>Customer Feedback</h2>
                                <div class="separator"></div>
                            </div>
                        </div>
                        <div class="column col-md-8 col-sm-12 col-xs-12">
                            <div class="text">Being the largest Photography service in Delhi NCR. #CLASSIC-PHOTO-STUDIO</div>
                        </div>
                    </div>
                </div>

                <div class="two-item-carousel owl-carousel owl-theme">
                    <asp:Repeater ID="rpttestimonial" runat="server">
                        <ItemTemplate>
                    <!--Testimonial Block-->
                    <div class="testimonial-block">
                        <div class="inner-box">
                            <div class="clearfix">

                                <!--Image Column-->
                                <div class="image-column col-md-6 col-sm-6 col-xs-12">
                                    <div class="image">
                                        <img src="<%# ResolveUrl(Eval("img").ToString()) %>" alt="" style="height:320px;" />
                                    </div>
                                </div>
                                <!--Content Column-->
                                <div class="content-column col-md-6 col-sm-6 col-xs-12">
                                    <div class="inner-column">
                                        <div class="content">
                                            <div class="text"><%# Eval("discription") %>   </div>
                                            <div class="curve"></div>
                                        </div>
                                        <div class="lower-box">
                                            <h3><%# Eval("name") %></h3>
                                            <div class="locations"><%# Eval("location") %></div>
                                        </div>
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
        <!--End Testimonial Section-->
         </div>

</asp:Content>

