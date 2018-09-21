<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div>

         <!--Page Title-->
        <section class="page-title" style="background-image: url(img/background2.jpg)">
            <div class="auto-container">
                <h1>Contact Us</h1>
                <ul class="page-breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li>Contact Us</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->

        <section class="contact-page-section">
            <div class="auto-container">
                <div class="inner-container">
                    <div class="clearfix">
                        <!--Content Column-->
                        <div class="content-column col-md-7 col-sm-12 col-xs-12">
                            <div class="inner-column">
                                <h2>Contact Us</h2>
                                <div class="title-text">If you have any querry for related Photography & Videography… We are available...</div>
                                <div class="row clearfix">

                                    <!--Column-->
                                    <div class="column col-md-6 col-sm-12 col-xs-12">
                                        <h3>Our Office</h3>
                                        <%--<div class="location"><u>ANUP </u>SHAHR</div>--%>
                                        <ul class="contact-list">
                                            <li><asp:Label ID="lbladdress"  runat="server"   style="color:black;"> </asp:Label></li>
                                            <li><span>p:</span> <asp:Label ID="lblphone" runat="server"   style="color:black;"></asp:Label></li>
                                            <li><span>E:</span><asp:Label ID="lblemail" runat="server"   style="color:black;"></asp:Label></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--Form Column-->
                        <div class="form-column col-md-5 col-sm-12 col-xs-12">
                            <div class="inner-column">
                                <!--Contact Form-->
                                <div class="contact-form">
                                   
                                        <div class="form-group">
                                            <input type="text"  id="txtname" name="username" placeholder="Name" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email"   id="txtemail" name="email" placeholder="Email Address" runat="server" required="required" />

                                             </div>
                                         <div class="form-group">
                                            <input type="text"  id="txtphone" name="phone" placeholder="Phone" runat="server" required=""/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" id="txtsubject" name="subject" placeholder="Subject " runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <textarea name="message" id="txtmessage" placeholder="Message..." runat="server" required="required"></textarea>
                                        </div>
                                        <div class="form-group btn-box">
                                          <%--  <button class="theme-btn btn-style-two" type="submit" name="submit-form">Send Message</button>--%>
                                 <asp:Button ID="btnsubmit"  class="theme-btn btn-style-two"  runat="server" Text="send message" Onclick="btnsubmit_Click" />

                                             </div>
                                   
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <!--Map Info Section-->
        <section class="map-section">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28087.558131108948!2d78.245647082109!3d28.360519449462537!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390b47db13647acf%3A0x2bfa12939aea6563!2sClassic+Photo+Studio!5e0!3m2!1sen!2sin!4v1533623205208" width="1350" height="470" frameborder="0" style="border:0;margin-bottom:-8px;"></iframe>
        </section>
        </div>
</asp:Content>

