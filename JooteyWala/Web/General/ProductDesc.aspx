<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Master/JooteyWala.master" AutoEventWireup="true" CodeFile="ProductDesc.aspx.cs" Inherits="Web_General_ProductDesc" %>

<%@ Register TagPrefix="productDesc" TagName="ProductDescTag" Src="~/Web/General/Cntrl_ProductDesc.ascx" %>

<asp:Content ID="cntMainHolder" ContentPlaceHolderID="mainHolder" Runat="Server">    
  <%--  <productDescContent:productDescContentTag runat="server" />--%>
    <productDesc:ProductDescTag ID="ProductDescHolder" runat="server" />
</asp:Content>

