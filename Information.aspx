<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Projet02.Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="nomLabel" runat="server" Text="Nom:"></asp:Label>
<asp:TextBox ID="nomTextBox" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="nomRequiredFieldValidator" runat="server" ControlToValidate="nomTextBox" ErrorMessage="Le nom est obligatoire"></asp:RequiredFieldValidator>
<br />
<br />
<asp:Label ID="prenomLabel" runat="server" Text="Prénom:"></asp:Label>
<asp:TextBox ID="prenomTextBox" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="prenomRequiredFieldValidator" runat="server" ControlToValidate="prenomTextBox" ErrorMessage="Le prénom est obligatoire"></asp:RequiredFieldValidator>
<br />
<br />
<asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
<br />
<br />
<br />
<asp:Label ID="infoCookieLabel" runat="server" BorderColor="#CC0066" BorderStyle="Solid" BorderWidth="5px" ForeColor="Lime" Text="Information du Cookie"></asp:Label>
</asp:Content>
