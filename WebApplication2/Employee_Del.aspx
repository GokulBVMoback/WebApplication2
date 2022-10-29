<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_Del.aspx.cs" Inherits="WebApplication2.Employee_Del" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="page-heading">
                            <div class="col-md-8 col-md-offset-4">
                                <h1>Delete Employee</h1>
                            </div>
                        </header>
                         <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Enter Emp ID you want to delete:" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Employee ID" ID="TextBox1" />
                                    </div>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <asp:Button Text="Delete" ID="del_btn" CssClass="btn btn-danger" Width="150px" runat="server" OnClick="del_btn_Click" />
                                </div>
                            </div>
                             </div>
                        </section>
                        </div>
                </div>
       
        </section>
 </section>

</asp:Content>
