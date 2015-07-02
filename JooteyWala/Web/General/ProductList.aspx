<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Master/JooteyWala.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Web_General_ProductList" %>

<%@ Register TagPrefix="productList" TagName="ProductListTag" Src="~/Web/General/Cntrl_ProductList.ascx" %>


<asp:Content ID="cntMainHolder" ContentPlaceHolderID="mainHolder" Runat="Server">  
    <productList:ProductListTag ID="ProductListHolder" runat="server" />
</asp:Content>

