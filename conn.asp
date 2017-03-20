<%
dim sql_injdata
SQL_injdata = "'|and|exec|insert|select|delete|update|count|*|%|chr|mid|master|truncate|char|declare|script"
SQL_inj = split(SQL_Injdata,"|")
If Request.QueryString<>"" Then
For Each SQL_Get In Request.QueryString
For SQL_Data=0 To Ubound(SQL_inj)
if instr(Request.QueryString(SQL_Get),Sql_Inj(Sql_DATA))>0 Then
Response.Write "<Script Language=javascript>alert('注意：请不要提交非法请求,您输入的内容中有非法字符！');history.back(-1)</Script>"
Response.end
end if
next
Next
End If
If Request.Form<>"" Then
For Each Sql_Post In Request.Form
For SQL_Data=0 To Ubound(SQL_inj)
if instr(Request.Form(Sql_Post),Sql_Inj(Sql_DATA))>0 Then
Response.Write "<Script Language=javascript>alert('注意：请不要提交非法请求,您输入的内容中有非法字符！');history.back(-1)</Script>"
Response.end
end if
next
next
end if
%>
<%
db="managesystem/nuool_data_db/nuool.mdb"       
       On Error Resume Next
	dim ConnStr
	dim conn
		ConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(db)
		Set conn = Server.CreateObject("ADODB.Connection")
	conn.Open connstr
	If Err Then
		err.Clear
		Set Conn = Nothing
		Response.Write "数据库连接出错，请检查Conn.asp文件中的数据库参数设置。"
		Response.End
	End If
sub CloseConn()
	On Error Resume Next
	If IsObject(Conn) Then
		conn.close
		set conn=nothing
	end if
end sub
%>
<%
sql="select * from base where webid='nuool'"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,3
if rs.bof and rs.eof then
 response.write"<SCRIPT language=JavaScript>alert('找不到网站的配置信息！');"
  response.write"javascript:history.go(-1)</SCRIPT>"
  response.end
else
webindexname=rs("webindexname")
webname=rs("webname")
webkeywords=rs("webkeywords")
webdescription=rs("webdescription")
webbottom=rs("webbottom")
webtel=rs("webtel")
webc1=rs("webc1")
webc2=rs("webc2")
webc3=rs("webc3")
webc4=rs("webc4")
webc5=rs("webc5")
webc6=rs("webc6")
webc7=rs("webc7")
webc8=rs("webc8")
webc9=rs("webc9")
webc10=rs("webc10")
web1=rs("web1")
web2=rs("web2")
web3=rs("web3")
web4=rs("web4")
web5=rs("web5")
web6=rs("web6")
web7=rs("web7")
web8=rs("web8")
web9=rs("web9")
chat_style=rs("chat_style")
chat_switch=rs("chat_switch")
img1=rs("img1")
img2=rs("img2")
img3=rs("img3")
img4=rs("img4")
img5=rs("img5")
img6=rs("img6")
img7=rs("img7")
img8=rs("img8")
img9=rs("img9")
rs.update
rs.close
set rs=nothing
end if
%>
<%
Function RemoveHTML(strHTML) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 
objRegExp.IgnoreCase = True 
objRegExp.Global = True 
objRegExp.Pattern = "<.+?>" 
'objRegExp.Pattern = "(\r|\n|\r\n| |\t| )" 
Set Matches = objRegExp.Execute(strHTML) 
For Each Match in Matches 
strHtml=Replace(strHTML,Match.Value,"") 
Next 
objRegExp.Pattern = "(\r|\n|\r\n| |\t| )" 
Set Matches = objRegExp.Execute(strHTML) 
For Each Match in Matches 
strHtml=Replace(strHTML,Match.Value,"") 
Next 
RemoveHTML=strHTML 
Set objRegExp = Nothing 
End Function
%>