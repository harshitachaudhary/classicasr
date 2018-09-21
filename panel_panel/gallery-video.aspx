﻿<%@ Page Title="" Language="C#" MasterPageFile="~/panel_panel/admin_master.master" AutoEventWireup="true" CodeFile="gallery-video.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

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
            <h3 class="page-title">Gallery Video
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Gallery</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Gallery Video</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
               
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">

                        <div class="about-us">


                            <div class="row-fluid">
                                <div class="container">
                                    <asp:Label ID="lblresult" runat="server"></asp:Label>
                                    <asp:GridView ID="gvDetails" DataKeyNames="id" runat="server" Width="80%"
                                        AutoGenerateColumns="false" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8"
                                        ShowFooter="true" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White"
                                        OnRowCancelingEdit="gvDetails_RowCancelingEdit"
                                        OnRowDeleting="gvDetails_RowDeleting" OnRowEditing="gvDetails_RowEditing"
                                        OnRowUpdating="gvDetails_RowUpdating"
                                        OnRowCommand="gvDetails_RowCommand">
                                        <Columns>

                                            <asp:TemplateField>
                                                <HeaderTemplate>S.No.</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                           <asp:TemplateField HeaderText="Link">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txteditheading" runat="server" Text='<%#Eval("heading") %>' Width="90%"></asp:TextBox>

                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblitemUsr" runat="server" Text='<%#Eval("heading") %>' />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtftrusrname" runat="server" Width="90%" />
                                                <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtftrusrname" Text="*" ValidationGroup="validaiton" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                           
                                            <asp:TemplateField>
                                                <EditItemTemplate>
                                                    <asp:ImageButton ID="imgbtnUpdate" CommandName="Update" runat="server" ImageUrl="~/Imagess/update.jpg" ToolTip="Update" Height="20px" Width="20px" />
                                                    <asp:ImageButton ID="imgbtnCancel" runat="server" CommandName="Cancel" ImageUrl="~/Imagess/Cancel.jpg" ToolTip="Cancel" Height="20px" Width="20px" />
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="imgbtnEdit" CommandName="Edit" runat="server" ImageUrl="~/Imagess/Edit.jpg" ToolTip="Edit" Height="20px" Width="20px" />
                                                    <asp:ImageButton ID="imgbtnDelete" CommandName="Delete" Text="Edit" runat="server" ImageUrl="~/Imagess/delete.jpg" ToolTip="Delete" Height="20px" Width="20px" />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:ImageButton ID="imgbtnAdd" runat="server" ImageUrl="~/Imagess/AddNewitem.jpg" CommandName="AddNew" Width="30px" Height="30px" ToolTip="Add new User" ValidationGroup="validaiton" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>

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

