<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_Upt.aspx.cs" Inherits="WebApplication2.Employee_Upt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="page-heading">
                            <div class="col-md-8 col-md-offset-4">
                                <h1>Modify Employee</h1>
                            </div>
                        </header>
                        <div class="panel-body">
                             <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Enter the ID you want to modify:" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Employee ID" ID="TextBox6" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Employee Name" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Employee Name" ID="TextBox1"  />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Age" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Age" ID="TextBox2"  />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="DOB" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="DOB" ID="TextBox3" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group" id="RadioButton1">
                                        <asp:Label Text="Gender" runat="server" />
                                        <asp:RadioButtonList runat="server" ID="RadioButtonList1" >
                                            <asp:ListItem Text="Male" />
                                            <asp:ListItem Text="Female" />
                                            <asp:ListItem Text="Other" />
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Department" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Department" ID="TextBox4" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Salary" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Salary" ID="TextBox5" />
                                    </div>
                                </div>
                            </div>
                             <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <asp:Button Text="Update" ID="Button1" CssClass="btn btn-primary" Width="150px" runat="server" OnClick="Button1_Click" />
                                </div>
                            </div>


                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>


</asp:Content>
