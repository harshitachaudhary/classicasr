<%@ Page Title="" Language="C#" MasterPageFile="~/panel_panel/admin_master.master" AutoEventWireup="true" CodeFile="update-services.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
        <div class="span12">
            <!-- BEGIN THEME CUSTOMIZER-->
            <div id="theme-change" class="hidden-phone">
                <i class="icon-cogs"></i>
                <span class="settings">
                    <span class="text">Theme:</span>
                    <span class="colors">
                        <span class="color-default" data-style="default"></span>
                        <span class="color-gray" data-style="gray"></span>
                        <span class="color-purple" data-style="purple"></span>
                        <span class="color-navy-blue" data-style="navy-blue"></span>
                    </span>
                </span>
            </div>
            <!-- END THEME CUSTOMIZER-->
            <h3 class="page-title">Update Services
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Services</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Update Service </a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Update Here </h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">

                        <div class="about-us">

                            <div class="row-fluid">
                                <div class="control-group">
                                    <label class="control-label">
                                        Choose Service First : :
                                           <%--<asp:RequiredFieldValidator ID="RequireddFieldValidator5" runat="server" ControlToValidate="Editor1" ValidationGroup="tt" ErrorMessage="Pls. Enter Description. !" Text="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>--%>
                                    </label>
                                    <div class="controls">
                                        <%--                                        <asp:TextBox ID="txtsrvname" runat="server" Width="40%"></asp:TextBox>--%>
                                        <asp:DropDownList ID="ddlservice" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlservice_SelectedIndexChanged"></asp:DropDownList>
                                        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

                                    </div>
                                </div>
                            </div>

                            <div class="row-fluid">
                                <div class="control-group">
                                    <label class="control-label">
                                        Short Discription:
                                           <%--<asp:RequiredFieldValidator ID="RequireddFieldValidator5" runat="server" ControlToValidate="Editor1" ValidationGroup="tt" ErrorMessage="Pls. Enter Description. !" Text="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>--%>
                                    </label>
                                    <div class="controls">

                                        <cc1:Editor ID="Editorshrtcontent" runat="server" Height="200px" Width="350px" />

                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    Image
                                        <span style="color: red">(Image Size:- Width:370px & Height:250px)</span></label>
                                <div class="controls">
                                    <asp:FileUpload ID="FileUpload1" runat="server" Style="width: 55%" />
                                    <asp:Image ID="Imageshort" runat="server" Width="200px" Height="200px" />

                                </div>
                            </div>


                            <div class="row-fluid">
                                <div class="control-group">
                                    <label class="control-label">
                                        Discription :
                                           <%--<asp:RequiredFieldValidator ID="RequireddFieldValidator5" runat="server" ControlToValidate="Editor1" ValidationGroup="tt" ErrorMessage="Pls. Enter Description. !" Text="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>--%>
                                    </label>
                                    <div class="controls">

                                        <cc1:Editor ID="Editorservccontent" runat="server" Height="600px" Width="600px" />

                                    </div>
                                </div>
                            </div>

                             <div class="row-fluid">
                                <div class="control-group">
                                    <label class="control-label">
                                        Heading1 :
                                           <%--<asp:RequiredFieldValidator ID="RequireddFieldValidator5" runat="server" ControlToValidate="Editor1" ValidationGroup="tt" ErrorMessage="Pls. Enter Description. !" Text="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>--%>
                                    </label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtheading1" runat="server" Width="40%"></asp:TextBox>
                                         
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    Image1
                                        <span style="color: red">(Image Size:- Width:370px & Height:250px)</span></label>
                                <div class="controls">
                                    <asp:FileUpload ID="FileUpload2" runat="server" Style="width: 55%" />
                                    <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" />

                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    Image2
                                        <span style="color: red">(Image Size:- Width:370px & Height:250px)</span></label>
                                <div class="controls">
                                    <asp:FileUpload ID="FileUpload3" runat="server" Style="width: 55%" />
                                    <asp:Image ID="Image2" runat="server" Width="200px" Height="200px" />

                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    Image3
                                        <span style="color: red">(Image Size:- Width:370px & Height:250px)</span></label>
                                <div class="controls">
                                    <asp:FileUpload ID="FileUpload4" runat="server" Style="width: 55%" />
                                    <asp:Image ID="Image3" runat="server" Width="200px" Height="200px" />

                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    Image4
                                        <span style="color: red">(Image Size:- Width:370px & Height:250px)</span></label>
                                <div class="controls">
                                    <asp:FileUpload ID="FileUpload5" runat="server" Style="width: 55%" />
                                    <asp:Image ID="Image4" runat="server" Width="200px" Height="200px" />

                                </div>
                            </div>



                            <div class="form-actions clearfix">

                                <div class="control-group">
                                    <label class="control-label"></label>
                                    <div class="controls">
                                        <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success" ValidationGroup="tt" OnClick="Button1x_Click"></asp:Button>
                                    </div>
                                </div>
                            </div>

                            <!--END ABOUT US-->
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

