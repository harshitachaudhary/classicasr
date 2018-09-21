<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="galleryphoto.aspx.cs" Inherits="galleryphoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>
     <!--Page Title-->
        <section class="page-title" style="background-image:url(img/background2.jpg)">
            <div class="auto-container">
                <h1>Photos</h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>Photos</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->
        
        <!--Project Section-->
        <section class="project-section">
            <div class="auto-container">
                

                <div class="items-container row clearfix">
                      <asp:Repeater ID="rptphotos" runat="server">
                        <ItemTemplate>
                    <!--Project Block Two-->
                    <div class="project-block-two masonry-item residential all col-md-4 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <img src="<%# ResolveUrl(Eval("image").ToString()) %>" alt="" style="height:240px;" />
                                <div class="overlay-box">
                                    <div class="content">
                                        <a href="<%# ResolveUrl(Eval("image").ToString()) %>" class="search-btn lightbox-image" data-fancybox="images" data-caption=""><span class="flaticon-plus-zoom"></span></a>
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
        <!--End Project Section-->
    </div>

</asp:Content>

