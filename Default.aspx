<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-wrapper">

        <!-- Preloader -->
        <div class="preloader"></div>
        <!--Main Slider Harshita Choudhary 9457226468-->
        <section class="main-slider">

            <div class="rev_slider_wrapper fullwidthbanner-container" id="rev_slider_one_wrapper" data-source="gallery">
                <div class="rev_slider fullwidthabanner" id="rev_slider_one" data-version="5.4.1">
                    <ul>
                        <asp:Repeater ID="rptrerbanner" runat="server">
                            <ItemTemplate>
                                <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="images/main-slider/image-4.jpg" data-title="Slide Title" data-transition="parallaxvertical">
                                    <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="<%# ResolveUrl(Eval("image").ToString()) %>" />

                                    <div class="tp-caption"
                                        data-paddingbottom="[0,0,0,0]"
                                        data-paddingleft="[0,0,0,0]"
                                        data-paddingright="[0,0,0,0]"
                                        data-paddingtop="[0,0,0,0]"
                                        data-responsive_offset="on"
                                        data-type="text"
                                        data-height="none"
                                        data-width="['600','700','650','460']"
                                        data-whitespace="normal"
                                        data-hoffset="['15','15','15','15']"
                                        data-voffset="['-40','-60','-70','-50']"
                                        data-x="['left','left','left','left']"
                                        data-y="['middle','middle','middle','middle']"
                                        data-textalign="['top','top','top','top']"
                                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'>
                                        <h2 class="style-two"><%# Eval("heading1") %></h2>
                                    </div>

                                    <div class="tp-caption"
                                        data-paddingbottom="[0,0,0,0]"
                                        data-paddingleft="[0,0,0,0]"
                                        data-paddingright="[0,0,0,0]"
                                        data-paddingtop="[0,0,0,0]"
                                        data-responsive_offset="on"
                                        data-type="text"
                                        data-height="none"
                                        data-width="['600','700','650','460']"
                                        data-whitespace="normal"
                                        data-hoffset="['15','15','15','15']"
                                        data-voffset="['50','30','20','15']"
                                        data-x="['left','left','left','left']"
                                        data-y="['middle','middle','middle','middle']"
                                        data-textalign="['top','top','top','top']"
                                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'>
                                        <h1><%# Eval("heading2") %></h1>
                                    </div>

                                    <div class="tp-caption"
                                        data-paddingbottom="[0,0,0,0]"
                                        data-paddingleft="[0,0,0,0]"
                                        data-paddingright="[0,0,0,0]"
                                        data-paddingtop="[0,0,0,0]"
                                        data-responsive_offset="on"
                                        data-type="text"
                                        data-height="none"
                                        data-width="['600','700','650','480']"
                                        data-whitespace="normal"
                                        data-hoffset="['15','15','15','15']"
                                        data-voffset="['120','100','70','60']"
                                        data-x="['left','left','left','left']"
                                        data-y="['middle','middle','middle','middle']"
                                        data-textalign="['top','top','top','top']"
                                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'>
                                        <div class="text style-two"><%# Eval("heading3") %></div>
                                    </div>

                                    <div class="tp-caption tp-resizeme"
                                        data-paddingbottom="[0,0,0,0]"
                                        data-paddingleft="[0,0,0,0]"
                                        data-paddingright="[0,0,0,0]"
                                        data-paddingtop="[0,0,0,0]"
                                        data-responsive_offset="on"
                                        data-type="text"
                                        data-height="none"
                                        data-width="['600','550','550','460']"
                                        data-whitespace="normal"
                                        data-hoffset="['15','15','15','15']"
                                        data-voffset="['190','160','130','120']"
                                        data-x="['left','left','left','left']"
                                        data-y="['middle','middle','middle','middle']"
                                        data-textalign="['top','top','top','top']"
                                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'>
                                        <a href="galleryphoto.aspx" class="theme-btn btn-style-one">View Gallery</a>
                                    </div>

                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>
        <!--End Main Slider-->


        <!--Services Section Two  Harshita Choudhary 9457226468-->
        <section class="specialization-section">

            <div class="title-box" style="background-image: url(images/background/pattern-1.png)">
                <div class="auto-container">
                    <div class="row clearfix">
                        <div class="column col-md-4 col-sm-12 col-xs-12">
                            <div class="sec-title light">
                                <h2>Our Specialization</h2>
                                <div class="separator"></div>
                            </div>
                        </div>
                        <div class="column col-md-8 col-sm-12 col-xs-12">
                            <div class="text">Being the Best Photography service in Delhi NCR. #CLASSIC-PHOTO-STUDIO</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blocks-container">
                <div class="auto-container">
                    <div class="inner-container">

                        <div class="row clearfix">

                            <div class="special-block col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <div class="inner-box">
                                    <div class="big-letter">cs</div>
                                    <div class="text">
                                        We provide clients with the highest possible level
                                        <br>
                                        of service anywhere in the world.
                                    </div>
                                    <div class="row clearfix">

                                        <!--Special Info Block-->
                                        <div class="special-info-block col-md-4 col-sm-4 col-xs-12">
                                            <div class="inner">
                                                <div class="icon-box">
                                                    <span class="fa fa-camera"></span>
                                                </div>
                                                <h3>PHOTOGRAPHY</h3>
                                            </div>
                                        </div>

                                        <!--Special Info Block-->
                                        <div class="special-info-block col-md-4 col-sm-4 col-xs-12">
                                            <div class="inner">
                                                <div class="icon-box">
                                                    <span class="fa fa-video-camera "></span>
                                                </div>
                                                <h3>VEDIOGRAPHY</h3>
                                            </div>
                                        </div>

                                        <!--Special Info Block-->
                                        <div class="special-info-block col-md-4 col-sm-4 col-xs-12">
                                            <div class="inner">
                                                <div class="icon-box">
                                                    <span class="fa fa-tasks"></span>
                                                </div>
                                                <h3>PLANING</h3>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!--Special Block Two-->
                            <div class="special-block-two alternate col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <div class="inner-box">
                                    <div class="content-box">
                                        <h2>We stand out from all of our competitors.</h2>
                                        <div class="text">Must explain you how all this mistaken idea of denouncing pleasure.</div>
                                        <div class="signature">
                                            <span class="icon flaticon-check-form"></span>
                                            <asp:Label ID="lblemailid" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="experiance-box">
                                        <div class="inner">
                                            <h3>Years Of Experience</h3>
                                            <div class="number">
                                                <asp:Label ID="lblexperiance" runat="server"></asp:Label>
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
        <!--End Services Section Two-->

        <!--About Section  Harshita Choudhary 9457226468-->
        <section class="about-section">
            <div class="auto-container">
                <div class="row clearfix">
                    <div class="content-column col-md-6 col-sm-12 col-xs-12">
                        <div class="inner-column">
                            <h2>
                                <asp:Label ID="lblheading1" runat="server"></asp:Label><span class="aboutspan"><asp:Label ID="lblheading2" runat="server"></asp:Label></span>
                                <br />
                                <asp:Label ID="lblheading3" runat="server"></asp:Label></h2>
                            <div class="text">
                                <p class="text-justify">
                                    <asp:Label ID="lbldiscription" runat="server"></asp:Label>
                                </p>
                            </div>
                            <div class="author">
                                <asp:Label ID="lblheading4" runat="server" class="aboutauthor"></asp:Label><span class="aboutanspan">/<asp:Label ID="lblheading5" runat="server"></asp:Label></span>
                            </div>
                        </div>
                    </div>
                    <div class="column col-md-6 col-sm-12 col-xs-12">
                        <asp:Repeater ID="rptaboutimage" runat="server">
                            <ItemTemplate>
                                <div class="image">
                                    <img src="<%# ResolveUrl(Eval("content").ToString()) %>" alt="" />
                                    <a href="aboutus.aspx" class="more-about">More About Us</a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </section>
        <!--End About Section-->

        <!--Services Section-->
        <div class="services-section">
            <div class="auto-container">
                <!--Sec Title-->
                <div class="sec-title centered">
                    <h2>Services We Do</h2>
                    <div class="separator"></div>
                </div>
                <div class="row clearfix">
                    <asp:Repeater ID="rptservices" runat="server">
                        <ItemTemplate>
                    <!--Services Block-->
                    <div class="services-block col-md-4 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <a href="service-details.aspx?service-name=<%# Eval("service_name") %>">
                                    <img src="<%# ResolveUrl(Eval("image").ToString()) %>" alt="" style="height: 210px;" /></a>
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

                <div class="btn-box text-center">
                    <a href="services.aspx" class="theme-btn btn-style-two">View all</a>
                </div>

            </div>
        </div>
        <!--End Services Section-->
        <!--Choose Section-->
        <section class="choose-section" style="background-image: url(images/background/1.jpg);">
            <div class="auto-container">
                <div class="sec-title light">
                    <h2>Why Choose Us</h2>
                    <div class="separator light"></div>
                </div>
                <div class="row clearfix">
                    <asp:Repeater runat="server" ID="rptfeatures">
                        <ItemTemplate>
                            <!--Servives Block Two-->
                            <div class="services-block-two  col-md-3 col-sm-6 col-xs-12">
                                <div class="inner-box">
                                    <div class="bg-layer"></div>
                                    <div class="icon-box">
                                        <span class="<%# Eval("icon") %>"></span>
                                    </div>
                                    <h2><a href="#"><%# Eval("heading1") %>
                                        <br>
                                        <%# Eval("heading2") %></a></h2>
                                    <a href="aboutus.aspx" class="read-more">Read More</a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </section>
        <!--End Choose Section-->
        <!--Project Section-->
        <section class="project-section">
            <div class="auto-container">
                <div class="sec-title centered">
                    <h2>Latest Projects</h2>
                    <div class="separator"></div>
                </div>

                <div class="items-container row clearfix">

                    <!--Project Block Two-->
                    <div class="project-block-two masonry-item residential all col-md-4 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <img src="img/gallery10.jpg" alt="" style="height: 481px;" />
                                <div class="overlay-box">
                                    <div class="content">
                                        <asp:Repeater ID="rptproject1" runat="server"><ItemTemplate>
                                        <a href="<%# ResolveUrl(Eval("content").ToString()) %>" class="search-btn lightbox-image" data-fancybox="images" data-caption=""><span class="flaticon-plus-zoom"></span></a>
                                    </ItemTemplate></asp:Repeater>
                                             </div>
                                </div>
                            </div>
                            <div class="lower-content">
                                <h2><a href="galleryphoto.aspx"> <asp:Label ID="lblproject1" runat="server"></asp:Label></a></h2>
                                <div class="category"> <asp:Label ID="lblproject11" runat="server"></asp:Label></div>
                            </div>
                        </div>
                    </div>

                    <!--Project Block Two-->
                    <div class="project-block-two masonry-item all industry restaurant col-md-4 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <img src="img/gallery5.jpg" alt="" style="height: 260px;" />
                                <div class="overlay-box">
                                    <div class="content">
                                         <asp:Repeater ID="rptproject2" runat="server"><ItemTemplate>
                                        <a href="<%# ResolveUrl(Eval("content").ToString()) %>" class="search-btn lightbox-image" data-fancybox="images" data-caption=""><span class="flaticon-plus-zoom"></span></a>
                                    </ItemTemplate></asp:Repeater>
                                             </div>
                                </div>
                            </div>
                            <div class="lower-content">
                                <h2><a href="galleryphoto.aspx" <asp:Label ID="lblproject2" runat="server"></asp:Label></a></h2>
                                <div class="category"> <asp:Label ID="lblproject21" runat="server"></asp:Label></div>
                            </div>
                        </div>
                    </div>

                    <!--Project Block Two-->
                    <div class="project-block-two masonry-item all commercial col-md-4 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <img src="img/gallery11.jpg" alt="" style="height: 480px;" />
                                <div class="overlay-box">
                                    <div class="content">
                                        <asp:Repeater ID="rptproject3" runat="server"><ItemTemplate>
                                        <a href="<%# ResolveUrl(Eval("content").ToString()) %>" class="search-btn lightbox-image" data-fancybox="images" data-caption=""><span class="flaticon-plus-zoom"></span></a>
                                      </ItemTemplate></asp:Repeater>
                                       </div>
                                </div>
                            </div>
                            <div class="lower-content">
                                <h2><a href="galleryphoto.aspx"> <asp:Label ID="lblproject3" runat="server"></asp:Label></a></h2>
                                <div class="category"> <asp:Label ID="lblproject31" runat="server"></asp:Label></div>
                            </div>
                        </div>
                    </div>

                    <!--Project Block Two-->
                    <div class="project-block-two masonry-item all corporate industry col-md-4 col-sm-6 col-xs-12">
                        <div class="inner-box">
                            <div class="image">
                                <img src="img/gallery2.jpg" alt="" style="margin-top: -230px; height: 250px;" />
                                <div class="overlay-box">
                                    <div class="content">
                                        <asp:Repeater ID="rptproject4" runat="server"><ItemTemplate>
                                        <a href="<%# ResolveUrl(Eval("content").ToString()) %>" class="search-btn lightbox-image" data-fancybox="images" data-caption=""><span class="flaticon-plus-zoom"></span></a>
                                    </ItemTemplate></asp:Repeater>
                                              </div>
                                </div>
                            </div>
                            <div class="lower-content">
                                <h2><a href="galleryphoto.aspx"> <asp:Label ID="lblproject4" runat="server"></asp:Label></a></h2>
                                <div class="category"> <asp:Label ID="lblproject41" runat="server"></asp:Label></div>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="btn-box text-center">
                    <a href="galleryphoto.aspx" class="theme-btn btn-style-two">View all</a>
                </div>

            </div>
        </section>
        <!--End Project Section-->


        <!--Testimonial Section-->
        <section class="testimonial-section" style="background-image: url(images/background/pattern-2.png)">
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
                                                <img src="<%# ResolveUrl(Eval("img").ToString()) %>" alt="" style="height: 320px;" />
                                            </div>
                                        </div>
                                        <!--Content Column-->
                                        <div class="content-column col-md-6 col-sm-6 col-xs-12">
                                            <div class="inner-column">
                                                <div class="content">
                                                    <div class="text"><%# Eval("discription") %>  </div>
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

        <!--blog Section-->
        <section class="news-section">
            <div class="auto-container">
                <div class="sec-title centered">
                    <h2>Latest Blog</h2>
                    <div class="separator"></div>
                </div>
                <div class="row clearfix">
                     
                     <asp:Repeater ID="rpthome_blog" runat="server">
                            <ItemTemplate>
                    <!--News Block-->
                    <div class="news-block col-md-4 col-sm-6 col-xs-12">
                       
                        <div class="inner-box">
                            <div class="image">
                                <a href="blog.aspx">
                                    <img src="<%# ResolveUrl(Eval("image").ToString()) %>" alt="" /></a>
                            </div>
                            <div class="lower-content">
                                <div class="category"><%# Eval("blogservice") %></div>
                                <div class="lower-box">
                                    <div class="post-date">
                                       <%# Eval("blogdate") %>
                                        <br/>
                                      <%# Eval("blogmonth") %>
                                    </div>
                                    <h3><a href="blog.aspx"><%# Eval("blogname") %></a></h3>
                                    <div class="post-info"><span class="theme_color">By:</span> <%# Eval("authorname") %></div>
                                </div>
                            </div>
                        </div>
                          
                     
                    </div>

                      </ItemTemplate>
                        </asp:Repeater>


                    
                </div>
            </div>
        </section>
        <!--End blog Section-->


    </div>
</asp:Content>

