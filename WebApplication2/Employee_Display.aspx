<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_Display.aspx.cs" Inherits="WebApplication2.Employee_Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="page-heading">
                            <div class="col-md-8 col-md-offset-4">
                                <h1>Employee Details</h1>
                            </div>
                        </header>
                        <div class="panel-body" id="GridView">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                </div>
                            </div>
       

                        </div>
                    </section>
                </div>
                <div class="col-lg-12 table-hover" >
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="Genter" HeaderText="Genter" SortExpression="Genter" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                    </Columns>
                </asp:GridView>
                    </div>
            </div>
        </section>
    </section>


</asp:Content>
