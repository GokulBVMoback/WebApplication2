<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_Search.aspx.cs" Inherits="WebApplication2.Employee_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="page-heading">
                            <div class="col-md-8 col-md-offset-4">
                                <h1>Search Employee</h1>
                            </div>
                        </header>
                         <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Enter Emp ID you want to Search:" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Employee ID" ID="TextBox1" />
                                    </div>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <asp:Button Text="Search" ID="search_btn" CssClass="btn btn-primary" Width="150px" runat="server" OnClick="search_btn_Click" />
                                    <br />
                                </div>
                                  <asp:Panel ID="Panel1" runat="server" Height="93px">
                                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                                                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB"/>
                                                <asp:BoundField DataField="Genter" HeaderText="Genter" SortExpression="Genter" />
                                                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                            </Columns>
                                          </asp:GridView>
                                  </asp:Panel>
                            </div>
                             </div>
                        </section>
                        </div>
                </div>
       
        </section>
 </section>

</asp:Content>
