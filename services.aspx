<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>
         <!--Page Title-->
        <section class="page-title" style="background-image:url(img/background2.jpg)">
            <div class="auto-container">
                <h1>Services</h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>Services</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->


        <!--Services Page Section-->
        <section class="services-page-section">
            <div class="auto-container">
                <div class="row clearfix">
                    <asp:Repeater ID="rptservices" runat="server">
                        <ItemTemplate>

                       
                    <!--Services Block-->
                    <div class="services-block col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <a href="service-details.aspx?service-name=<%# Eval("service_name") %>"">
                                    <img src="<%# ResolveUrl(Eval("image").ToString()) %>" alt="" style="height:210px;" /></a>
                                <div class="category"><%# Eval("service_name") %></div>
                            </div>
                            <div class="lower-content">
                                <div class="upper-box">
                                    <div class="text"><%# Eval("short_disc") %></div>
                                </div>
                                <div class="lower-box">
                                    <a href="service-details.aspx?service-name=<%# Eval("service_name") %>" class="read-more">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>

                     </ItemTemplate>
                    </asp:Repeater>
                  

                </div>
            </div>
        </section>
        <!--End Services Page Section-->

        </div>

</asp:Content>

