<!--#include file="conn.asp" -->
<%
if request.form("tijiao")="yesok" then
orderid=trim(request.form("orderid"))
f1=trim(request.form("product"))
f2=trim(request.form("yanse"))
f3=trim(request.form("mun"))
f4=trim(request.form("name"))
f5=trim(request.form("mob"))
f6=trim(request.form("province"))
f7=trim(request.form("city"))
f8=trim(request.form("area"))
f9=trim(request.form("address"))
f10=trim(request.form("guest"))
set rs=server.createobject("adodb.recordset")
sql="select * from feedback where (id is null)"
rs.open sql,conn,1,3
rs.addnew
rs("orderid")=orderid
rs("f1")=f1
rs("f2")=f2
rs("f3")=f3
rs("f4")=f4
rs("f5")=f5
rs("f6")=f6
rs("f7")=f7
rs("f8")=f8
rs("f9")=f9
rs("f10")=f10
rs("f_time")=now()
rs.update
rs.close
set rs=nothing
conn.close  
set conn=nothing
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=7">
<title>订单提交</title>
<meta name="Author" content=""> 
<meta name="Copyright" content=""> 
<meta name="viewport" content="width=device-width,initial-scale=0.4,minimum-scale=0.3,maximum-scale=1.0">
<link href="./save_files/main.css" rel="stylesheet" type="text/css">
<link href="./save_files/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./save_files/notorder.js"></script>
<link rel="stylesheet" href="./save_files/progressbar.css">
<script src="./save_files/jquery-1.9.1.min.js"></script>
</head>

<body>
<div class="okDiv">
<span id="jdt" style="display: none;">
<section class="container" style="display: none;">
<div class="progress"><span class="orange" style="width: 100%;"><span style="display: inline-block; width: 100%;">订单已经处理成功&nbsp;&nbsp;&nbsp;&nbsp;</span></span> </div>
</section>
</span>
<script type="text/javascript">
	function loading(percent){
		$('.progress span').animate({width:percent},1000,function(){
			$(this).children().html(percent);
            if(percent=='100%'){
                $(this).children().html('订单已经处理成功&nbsp;&nbsp;&nbsp;&nbsp;');
                $('.container').fadeOut();
                document.getElementById("jdt").style.display='none';
                document.getElementById("t0").style.display='none';
                document.getElementById("t1").style.display='block';
                document.getElementById("t2").style.display='block';
            }
		})
	}
</script>

      <script type="text/javascript">loading('100%');</script> 
      <div class="top">
      <div class="shibai">
      <div id="t1">订单提交成功！</div>
      <div id="t2">如遇到提交问题，请立即与客服取得联系！</div>
      </div>
      </div>
      <div class="content">
订单号：<%=orderid%><br />
姓名：<%=f4%><br />
电话：<%=f5%><br />
产品：<%=f1%>、<%=f2%><br />
付款方式：货到付款<br />
地址：<%=f9%>
      </div>
      <div class="bottom">
      <div class="btnDiv">
      <a href="index.asp"><img src="./save_files/close.gif" alt="" border="0/"></a>
      </div>
      </div>
</div>

<iframe style="top:2px" id="contacts" src="http://139.196.204.23:8888/smsGBK.aspx?action=send&userid=3846&account=yezong&password=yezong12345&mobile=<%=f5%>&content=【云订单】您的订单:已经提交成功，我们会安排快递安全送达，请您注意查收。如需帮助请联系客服。退订回T &sendTime=&extno=" frameborder="0" scrolling="No" width="1" height="1" name="contacts" marginwidth="1" marginheight="1"></iframe>

</body></html>