<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Employes.aspx.cs" Inherits="Projet02.Employes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="employeGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="employeesSqlDataSource" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:ButtonField HeaderText="Afficher" Text="Afficher" />
        <asp:BoundField DataField="EmployeeID" HeaderText="NuméroID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
        <asp:BoundField DataField="LastName" HeaderText="Nom" SortExpression="LastName" />
        <asp:BoundField DataField="FirstName" HeaderText=" Prénom" SortExpression="FirstName" />
        <asp:BoundField DataField="BirthDate" HeaderText="Date naissance" SortExpression="BirthDate" DataFormatString="{0:d}" />
        <asp:BoundField DataField="Country" HeaderText="Pays" SortExpression="Country" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:GridView>
    <br />
    <hr />
<asp:SqlDataSource ID="employeesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT EmployeeID, LastName, FirstName, BirthDate, Country FROM Employees"></asp:SqlDataSource>
    <asp:Label ID="nomLabel" runat="server" Text="Nom:"></asp:Label>
    <asp:TextBox ID="nomTextBox" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="prenomLabel" runat="server" Text="Prénom:  "></asp:Label>
    <asp:TextBox ID="prenomTextBox" runat="server"></asp:TextBox>
</asp:Content>
