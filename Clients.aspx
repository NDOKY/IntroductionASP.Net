<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="Projet02.Clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="paysLabel" runat="server" Text="Veuillez entrer le pays d'origine du client :"></asp:Label>
<br />
<br />
<br />
<asp:TextBox ID="paysTextBox" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="paysRequiredFieldValidator" runat="server" ControlToValidate="paysTextBox" ErrorMessage="Vous devez entrer le pays d'origine du client"></asp:RequiredFieldValidator>
<br />
<br />
<asp:Button ID="rechercheButton" runat="server" Text="Rechercher" OnClick="rechercheButton_Click" />
&nbsp;
<asp:Button ID="annulerButton" runat="server" Text="Annuler" OnClick="annulerButton_Click" />
<br />
<asp:GridView ID="clientGridView" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
</asp:GridView>
<br />
<asp:Label ID="nombreClientLabel" runat="server" Visible="False"></asp:Label>
<br />
<br />
</asp:Content>
