<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Master/JooteyWala.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Web_General_Home" %>

<%@ Register TagPrefix="banner" TagName="bannerTag" Src="~/Web/General/Cntrl_Banner.ascx" %>
<%@ Register TagPrefix="homeContent" TagName="homeContentTag" Src="~/Web/General/Cntrl_HomeContent.ascx" %>


<asp:Content ID="cntMainHolder" ContentPlaceHolderID="mainHolder" Runat="Server">    
    <%--<banner:bannerTag ID="BannerTag" runat="server" />    
    <homeContent:homeContentTag ID="HomeContentTag" runat="server" />--%>
    <banner:bannerTag ID="BannerHolder" runat="server" />
    <homeContent:homeContentTag ID="HomeContentHolder" runat="server" />
</asp:Content>

