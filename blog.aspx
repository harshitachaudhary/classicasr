<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>

        <!--Page Title-->
        <section class="page-title" style="background-image:url(img/background2.jpg)">
            <div class="auto-container">
                <h1>Blog</h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>Blog</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->
        
        <!--Sidebar Page Container-->
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side-->
                    <div class="content-side col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <!--Our Classic-->

                        <asp:Repeater ID="rptblog" runat="server">
                            <ItemTemplate>

                        <div class="blog-single">
                            <div class="inner-box">
                                <div class="image">
                                    <img src="<%# ResolveUrl(Eval("image").ToString()) %>" alt="" style="height:445px;"/>
                                </div>
                                <div class="lower-content">
                                    <div class="category"><%# Eval("blogservice") %></div>
                                    <div class="upper-box">
                                        <div class="post-date"><%# Eval("blogdate") %> <br> <%# Eval("blogmonth") %></div>
                                        <h2><%# Eval("blogname") %></h2>
                                        <div class="post-info"><span class="theme_color">By:</span> <%# Eval("authorname") %></div>
                                    </div>
                                    <div class="text">
                                             <p class="text-justify"><%# Eval("discription") %></p>

                                        </div>
                                    </div>
                            </div>
                        </div>
                                
                            </ItemTemplate>
                        </asp:Repeater>

                     

                    </div>

                  

                </div>
            </div>
        </div>
        <!--End Sidebar Page Container-->
        </div>

</asp:Content>

