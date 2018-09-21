<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="galleryvideo.aspx.cs" Inherits="galleryvideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>
          <!--Page Title-->
        <section class="page-title" style="background-image:url(img/background2.jpg)">
            <div class="auto-container">
                <h1>VIDEOS</h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>Videos</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->
        <!--Project Section-->
        <section class="project-section">
            <div class="auto-container">

                <div class="items-container row clearfix">
                     <asp:Repeater ID="RptVideos" runat="server"><ItemTemplate>
                    <!--Project Block Two-->
                    <div class="project-block-two masonry-item residential all col-md-4 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <iframe src='<%# ResolveUrl(Eval("heading").ToString()) %>' style="width:100%;height:240px"></iframe>                               
                            </div>

                        </div>
                    </div>
                           </ItemTemplate></asp:Repeater>

                  
                </div>
            </div>
        </section>
        <!--End Project Section-->

         </div>
</asp:Content>

