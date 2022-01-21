<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Tax.ascx.cs" Inherits="Tax" %>
<asp:Menu ID="Menu1" runat="server" style="position:absolute;left:500px; top:89px; height: 18px; width: 50px;">
    <Items>
        <asp:MenuItem Text="Plan Your Tax" Value="Plan Your Tax" NavigateUrl="~/PlanYourTax.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Tax Declaration" Value="Tax Declaration" NavigateUrl="~/TaxDeclaration.aspx"></asp:MenuItem>
        <asp:MenuItem Text="ESPF Proof Submission" Value="ESPF Proof Submission" NavigateUrl="~/ESPF_Tax_ProofSubmission.aspx"></asp:MenuItem>
        <asp:MenuItem Text="IT returns" Value="IT returns"></asp:MenuItem>
    </Items>
</asp:Menu>
