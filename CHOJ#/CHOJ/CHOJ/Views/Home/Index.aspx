﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
	CodeBehind="Index.aspx.cs" Inherits="CHOJ.Views.Home.Index" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="center">
		<dl>
			<dd>
			<%=Html.ActionLink("Problems Online","List","Group") %></dd>
			<dd>
			<%=Html.ActionLink("Status", "Status", "Answer")%></dd>
			<dd>
				<a href="Sort.aspx">RankList</a></dd>
        <%
			if (Request.IsAuthenticated) {
                    %>
					<dd>
					
						<a href="<%=Url.Action("Submit","Answer") %>">Submit the Answer</a>
					</dd>
<%} %>
			<dd>
				Suggest IDE/Compiler<br />
				<a href="http://www.microsoft.com/china/msdn/express/vc.aspx" title="Visual C++ Express Edition">
					Visual C++ 2005 Express Edition</a><br />
				<a href="http://www.microsoft.com/china/msdn/express/vb.aspx" title="Visual Basic 2005 Express Edition">
					Visual Basic 2005 Express Edition </a>
				<br />
				<a href="http://www.microsoft.com/china/msdn/express/csharp.aspx" title="Visual C# 2005 Express Edition">
					Visual C# 2005 Express Edition </a>
				<br />
				<a href="http://www.microsoft.com/china/msdn/express/vj.aspx" title="Visual J# 2005 Express Edition">
					Visual J# 2005 Express Edition </a>
				<br />
			</dd>
		</dl>
	</div>
</asp:Content>
