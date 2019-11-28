<%@ Page Title="" Language="C#" MasterPageFile="~/Hotel.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="hotel2.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">
	
 
<asp:Button ID="btnValue" runat="server" Text="Get Selected Value" OnClientClick="return getSelectedValue();" />
 
<asp:Button ID="btnText" runat="server" Text="Get Selected Text"  OnClientClick="return getSelectedText();" />
</form>
	<script type="text/javascript">
		function getSelectedValue() {

			alert("hello1");

		}

		function getSelectedText() {

			alert("hello");


		}
</script>
</asp:Content>
