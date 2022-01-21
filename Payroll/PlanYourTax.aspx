<%@ Page Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="PlanYourTax.aspx.cs" Inherits="PlanYourTax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    </p>
    
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
      <asp:Label ID="lblBasic" runat="server" Text="Basic" 
        Style="position:absolute; top: 116px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtBasic" runat="server" 
        Style="position:absolute; top: 116px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="10" AutoPostBack="True" OnTextChanged="txtBasic_TextChanged"></asp:TextBox>

    <asp:Label ID="lblHRA" runat="server" Text="HRA" 
        Style="position:absolute; top: 146px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtHRA" runat="server" 
        Style="position:absolute; top: 146px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="10" AutoPostBack="True" OnTextChanged="txtHRA_TextChanged"></asp:TextBox>

    <asp:Label ID="lblPF" runat="server" Text="PF" 
        Style="position:absolute; top: 176px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtPF" runat="server" 
        Style="position:absolute; top: 176px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="10" AutoPostBack="True" OnTextChanged="txtPF_TextChanged"></asp:TextBox>

    <asp:Label ID="lblAllowance" runat="server" Text="Allowance" 
        Style="position:absolute; top: 206px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtAllowance" runat="server" 
        Style="position:absolute; top: 206px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="10" AutoPostBack="True" OnTextChanged="txtAllowance_TextChanged"></asp:TextBox>

    <asp:Label ID="lblBonus" runat="server" Text="Bonus" 
        Style="position:absolute; top: 236px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtBonus" runat="server" 
        Style="position:absolute; top: 236px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="10" AutoPostBack="True" OnTextChanged="txtBonus_TextChanged"></asp:TextBox>
    <asp:Label ID="lblStatus" runat="server" Text=""
          Style="position:absolute; top: 296px; left: 11px;" CssClass="mylabel"></asp:Label>
 </asp:Content>


