﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (DictionaryEntry de in Cache)
        {
            Cache.Remove(de.Key.ToString());
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="清理缓存" />
<%
	foreach (DictionaryEntry de in Cache) {
		Response.Write(String.Format("{0}:{1}<BR>", de.Key, de.Value));
	}
 %></div>
    </form>
</body>
</html>
