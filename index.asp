<!--#include file="conn.asp" -->
<script type="text/javascript">
    function browserRedirect() {
      var sUserAgent = navigator.userAgent.toLowerCase();
      var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
      var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
      var bIsMidp = sUserAgent.match(/midp/i) == "midp";
      var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
      var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
      var bIsAndroid = sUserAgent.match(/android/i) == "android";
      var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
      var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
      if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
      } else {
        window.location.href="https://detail.tmall.com/item.htm?spm=a230r.1.0.0.386lju&id=42125543594&ns=1"
      }
    }
 
    browserRedirect();
  </script>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta charset="gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1,width=device-width">
<meta content="telephone=no" name="format-detection">
<meta name="applicable-device" content="mobile">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title><%=webindexname%></title>
<meta name="keywords" content="<%=webkeywords%>" />
<meta name="description" content="<%=webdescription%>" />
<link href="index/bootstrap.min.css" rel="stylesheet">
<link href="index/style.css" rel="stylesheet">
<script type="text/javascript" src="index/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="index/layer.min.js"></script>
<link type="text/css" rel="stylesheet" href="index/layer.css" id="skinlayercss">
<link type="text/css" rel="stylesheet" href="index/layer(1).css" id="skinlayercss">
<script type="text/javascript" src="index/jquery.slides.js"></script>
<script type="text/javascript" src="index/yuding.js"></script>
<script src="index/time.lesser.js"></script>
<script src="index/scroll.js"></script>
<script src="index/notorder.js"></script>
<script type="text/javascript">
$(function(){
	$('.myscroll').myScroll({
		speed: 40, //��ֵԽ���ٶ�Խ��
		rowHeight:68 //li�ĸ߶�
	});
	$('.myscrolls').myScroll({
		speed: 40, //��ֵԽ���ٶ�Խ��
		rowHeight:18 //li�ĸ߶�
	});
});
</script>
<!-- //������jquery -->

<!-- //������lazyload -->
<script type="text/javascript" src="index/jquery.lazyload.js"></script>
<script type="text/javascript">
$(document).ready(
function(){
$("img").lazyload({
     placeholder : "index/grey.gif", //����ͼƬǰ��ռλͼƬ
     effect      : "fadeIn" //����ͼƬʹ�õ�Ч��(����)
});
});
</script>
</head>
<body>

<div class="index_page">    
    
    <div class="top">
    <h1><img src="index/logo.png" original="images/logo.png"></h1>
    <dl>
    <dt><%=webc1%></dt>
    <dd>
        <li class="marright5">�ٷ���֤</li>
        <li class="marright5">��������</li>
        <li>�����������˿�</li>
    </dd>
    </dl>
</div>    
    <div class="banner"><p><img title="<%=webc1%> ��ͼ" src="managesystem/<%=img1%>" original="managesystem/<%=img1%>"></p></div>
  	<div class="container-fluid f12">
        <div class="row">
            <div class="col-xs-7 h54 bf6">
                <div class="jiage">��<span><%=webc2%></span></div>
                <dl class="yishou">
                    <dt><s>��<%=webc1%>Ԫ</s></dt>
                    <dd><%=webc6%> ������</dd>
                </dl>
            </div>
            <div class="col-xs-5 h54 p_x">
                <dl class="time tC">
                    <dt>�����ʱ</dt>
                    <dd>
                    <div class="time-count">
                        <div id="remainTime_1" class="jltimer"><span>��Ѿ�����</span></div>
                        <script language="javascript">
                            addTimeLesser(1, <%=webc4%>);
                        </script>
                    </div>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="title">
        <div class="f20"><%=webc1%></div>
        <div class="s_title">�ٷ��콢�����ۣ��������7���������˿</div>
        <div class="baoyou">
            <span class="by">˳�����</span>
            <span class="huo">��������</span>
            <span class="tui">�����������˿�</span>
        </div>
        <div class="gou cff"><a href="#ydname">��������</a></div>
    </div>
    
    <div class="huodong">
        <div class="hdtit">�˵��</div>
        <div class="hdjs"><p><%=web1%></p></div>
    </div>
    
    <div class="huodong" style="padding-bottom:0px;">
        <div class="hdtit">��������</div>
        <div class="lcpic"><p><%=web2%></p></div>
    </div>   
    
    <div class="huodong2">
        <div class="hdtit">��Ʒ��ϸ����</div>
        <div class="cpxx img_div"><p><%=web3%></p>
</div>
    </div>
    
    <div class="huodong" id="ydname">
        <div class="hdtit c00">������Ϣ��д</div>
        <form name="myform" method="post" action="save.asp">
<% 
 Public Function GetRndCode(maxLen)
  Dim strNewPass,whatsNext,upper,lower,intCounter
  Randomize
  For intCounter = 1 To maxLen
   whatsNext = Int((1 - 0 + 1) * Rnd + 0)
   If whatsNext = 0 Then
    upper = 90
    lower = 65
   Else
    upper = 57
    lower = 48
   End If
   strNewPass = strNewPass & Chr(Int((upper - lower + 1) * Rnd + lower))
  Next
  GetRndCode = strNewPass
 End Function
%>
<%
orderid=year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&GetRndCode(5)
%>
        <input type="hidden" name="orderid" id="orderid" value="<%=orderid%>">
            <div class="w100">
                <div class="product">��ʽѡ��<span>*</span></div>
              	<div class="kuansxzs f12">
                    <ul>
<%
set rs=server.createobject("adodb.recordset")
sql="select * from products order by paixu asc,id desc"
rs.open sql,conn,1,1 
if rs.eof and rs.bof then
else
do while not rs.eof
%>
                     <li class="ks"><%=rs("products_name")%> <input name="product" jiage="<%=rs("products_views")%>" type="radio" value="<%=rs("products_name")%>"></li>
<%
rs.movenext
loop
end if
rs.close
set rs=nothing
%>
                    </ul>
                </div>
 
                <div class="product">��ɫѡ��<span>*</span></div>
                <div class="chicun">
                    <ul>
<%
set rs=server.createobject("adodb.recordset")
sql="select * from products_list order by sortid asc,id desc"
rs.open sql,conn,1,1 
if rs.eof and rs.bof then
else
do while not rs.eof
%>
                    <li class="cc"><%=rs("list_type_name")%><input name="yanse" type="radio" value="<%=rs("list_type_name")%>"></li>
<%
rs.movenext
loop
end if
rs.close
set rs=nothing
%>

                    </ul>
                </div>

                
                <div class="product">��������<span>*</span></div>
                <div class="numb">
                	<span><input id="min1" name="" type="button" value="-"></span>
                    <em><input id="text_box1" name="mun" type="text" value="1" onFocus="this.blur()"></em>
                    <span><input id="add1" name="" type="button" value="+" onFocus="this.blur()"></span>
                    <p>��� <b class="zhuhong" id="_kucun"></b> ����ÿ���޹� <b class="zhuhong" id="_xiangou"></b> ��</p>
                    <input id="danjia" name="danjia" type="hidden" value="199">
                    <input id="action" name="action" type="hidden" value="order">
                    <input id="zhuid" name="zhuid" type="hidden" value="1">
                    <input id="kuanid" name="kuanid" type="hidden" value="0">
                    <input id="chiid" name="chiid" type="hidden" value="0">
                    <input name="price" id="price" value="199" type="hidden">
                </div>
                
                <div class="product">��Ʒ�ܼ�<span>*</span></div>
                                <!---��Ʒ�Ӽ�������---->
				<script type="text/javascript">
                $(function () {
                var t = $("#text_box1");
                $("#add1").click(function () {
				var flag=false;
				var product = document.getElementsByName('product'); 
				for(var i=0;i<product.length;i++){ 
				if($(product[i]).attr("checked")=="checked")
				{flag=true;}
				}
				if(flag==false)
				{
					layer.msg('��ѡ���ʽ��',1,-1);
				exit;
				}
				
try{
  var yanse = document.getElementsByName("yanse");
  if (yanse.length != 0){
     var numa=0;
     for (var i=0; i<yanse.length; i++){
      if(yanse[i].checked) {
      numa++;
      }
     }
     if(numa==0) {
      layer.msg('��ѡ��Ҫ������ɫ��',1,-1);
      return false;
      }
   }
}catch(ex){}

try{
  var chicun = document.getElementsByName("chicun");
  if (chicun.length != 0){
     var numa=0;
     for (var i=0; i<chicun.length; i++){
      if(chicun[i].checked) {
      numa++;
      }
     }
     if(numa==0) {
      layer.msg('��ѡ��Ҫ������룡',1,-1);
      return false;
      }
   }
}catch(ex){}
				
				var _xiangou=$("#_xiangou").text();
				_xiangou=parseInt(_xiangou);
				
				if(_xiangou==t.val())
				{
					
					layer.msg("ÿ���޹�"+_xiangou+"��",1,-1);
					exit;
				}
				
                t.val(parseInt(t.val()) + 1)
				
                setTotal(); //GetCount();
                })
                $("#min1").click(function () {
				var flag=false;
				var product = document.getElementsByName('product'); 
				for(var i=0;i<product.length;i++){ 
				if($(product[i]).attr("checked")=="checked")
				{flag=true;}
				}
				if(flag==false)
				{
					layer.msg('��ѡ���ʽ��',1,-1);
				exit;
				}
				
 try{
  var yanse = document.getElementsByName("yanse");
  if (yanse.length != 0){
     var numa=0;
     for (var i=0; i<yanse.length; i++){
      if(yanse[i].checked) {
      numa++;
      }
     }
     if(numa==0) {
      layer.msg('��ѡ��Ҫ������ɫ��',1,-1);
      return false;
      }
   }
}catch(ex){}

try{
  var chicun = document.getElementsByName("chicun");
  if (chicun.length != 0){
     var numa=0;
     for (var i=0; i<chicun.length; i++){
      if(chicun[i].checked) {
      numa++;
      }
     }
     if(numa==0) {
      layer.msg('��ѡ��Ҫ������룡',1,-1);
      return false;
      }
   }
}catch(ex){}
				
				
                if(t.val()>1){
                t.val(parseInt(t.val()) - 1)
                setTotal(); //GetCount();
				}
				
                })
                function setTotal() {
				var danjia=$("#danjia").val();
                $("#total1").html((parseInt(t.val()) * parseInt(danjia)).toFixed(0));
                $("#price").val((parseInt(t.val()) * parseInt(danjia)).toFixed(0));
                $("#newslist-1").val(parseInt(t.val()) * parseInt(danjia));
                }
                
                $(".ks").click(function(){
               
                var objradio=$(this).find(':radio[name="product"]');
               
				$(this).addClass('mouon').siblings().removeClass('mouon');
                
				var product = document.getElementsByName('product'); 
				for(var i=0;i<product.length;i++){ 
				$(product[i]).attr("checked",false);
				} 	
				$(objradio).attr("checked","checked");	
				var jiage=$(objradio).attr("jiage");	
				$("#danjia").val(jiage);
				var flag=false;
				var product = document.getElementsByName('product'); 
				for(var i=0;i<product.length;i++){ 
				if($(product[i]).attr("checked")=="checked")
				{flag=true;}
				}
				if(flag==false)
				{
				layer.msg('��ѡ���ʽ��',1,-1);
				exit;
				}  
				setTotal();
                })
				
				$(".cc").click(function(){
                var flag=false;
				var product = document.getElementsByName('product'); 
				for(var i=0;i<product.length;i++){ 
				if($(product[i]).attr("checked")=="checked")
				{flag=true;}
				}
				if(flag==false)
				{
					layer.msg('��ѡ���ʽ��',1,-1);
				exit;
				}
                var objradio=$(this).find(':radio[name="chicun"]');
                //$(this).attr("class","mouon");
				$(this).addClass('mouon').siblings().removeClass('mouon');
                
				var chicun = document.getElementsByName('chicun'); 
				for(var i=0;i<chicun.length;i++){ 
				$(chicun[i]).attr("checked",false);
				} 	
				$(objradio).attr("checked","checked");			
                })
				
                })
                </script>
                <div class="kuansxz">
                    <span class="mouon f18">�� <b id="total1">199</b> Ԫ</span>
                </div>
                
                <div class="product">���ʽ<span>*</span></div>
                <div class="car">
                    <span class="mouon f18 carbg">��������</span>
                    <span class="baoy" style="border:none; padding-left:6px;">֧��ȫ������������ʷѣ�</span>
                </div>
                
                <div class="product">�ջ�������<span>*</span></div>
                <div class="pad"><input type="text" name="name" class="form-control bod2" placeholder="�������ջ��˵��������߳ƺ�"></div>
                
                <div class="product">��ϵ�ֻ�<span>*</span></div>
                <div class="pad"><input type="tel" name="mob" class="form-control bod2" placeholder="�����������ֻ�����" maxlength="11" onKeyUp="this.value=this.value.replace(/\D/g,&#39;&#39;)"></div>
                
                <div class="product">���ڵ���<span>*</span></div>
                 <div class="pad">
                    <select id="s_province" name="province" class="form-control bod2"><option value="����ʡ��">����ʡ��</option><option value="������">������</option><option value="�����">�����</option><option value="�Ϻ���">�Ϻ���</option><option value="������">������</option><option value="�ӱ�ʡ">�ӱ�ʡ</option><option value="ɽ��ʡ">ɽ��ʡ</option><option value="���ɹ�">���ɹ�</option><option value="����ʡ">����ʡ</option><option value="����ʡ">����ʡ</option><option value="������ʡ">������ʡ</option><option value="����ʡ">����ʡ</option><option value="�㽭ʡ">�㽭ʡ</option><option value="����ʡ">����ʡ</option><option value="����ʡ">����ʡ</option><option value="����ʡ">����ʡ</option><option value="ɽ��ʡ">ɽ��ʡ</option><option value="����ʡ">����ʡ</option><option value="����ʡ">����ʡ</option><option value="����ʡ">����ʡ</option><option value="�㶫ʡ">�㶫ʡ</option><option value="����">����</option><option value="����ʡ">����ʡ</option><option value="�Ĵ�ʡ">�Ĵ�ʡ</option><option value="����ʡ">����ʡ</option><option value="����ʡ">����ʡ</option><option value="����">����</option><option value="����ʡ">����ʡ</option><option value="����ʡ">����ʡ</option><option value="�ຣʡ">�ຣʡ</option><option value="����">����</option><option value="�½�">�½�</option><option value="���">���</option><option value="����">����</option><option value="̨��ʡ">̨��ʡ</option></select>
                    <select id="s_city" name="city" class="form-control bod2 mar_t"><option value="�����ؼ���">�����ؼ���</option></select>
                    <select id="s_county" name="area" class="form-control bod2"><option value="�����С��ؼ���">�����С��ؼ���</option></select>
                    <script class="resources library" src="index/area.js" type="text/javascript"></script>
                    <script type="text/javascript">_init_area();</script>
                    <script type="text/javascript">
					var Gid  = document.getElementById ;
					var showArea = function(){
						Gid('show').innerHTML = "<h3>ʡ" + Gid('s_province').value + " - ��" + 	
						Gid('s_city').value + " - ��/��" + 
						Gid('s_county').value + "</h3>"
					}
					Gid('s_county').setAttribute('onchange','showArea()');
					</script>
                </div>
                
                <div class="product">��ϸ��ַ<span>*</span></div>
                <div class="pad"><input type="text" name="address" class="form-control bod2" placeholder="������������ϸ��ַ��������Ա�����ͻ�"></div>
                
                <div class="product">��ע��Ϣ ��ѡ�</div>
                <div class="pad"><textarea name="guest" class="form-control bod2" rows="3" placeholder="������������Ʒ������Ҫ������Ʒ��ɫ��������"></textarea></div>
                <!--
                <div class="product">�������·��Ҳ���֤��<span>*</span></div>
                <div class="pad" style="height:60px;"><input type="text" name="yzm" placeholder="������֤��" class="form-control bod2" maxlength="4" style="width:120px; text-align:center; float:left;"><img src="index/grey.gif" onclick="javascript:this.src=&#39;code.php?tm=&#39;+Math.random();" style="float:left; border:1px solid #dedede; height:46px; margin-left:20px;" original="code.php"></div>
                --> 
                <script>getfrom();</script><input type="hidden" name="fromurl" value="http://www.gzyangs.com/?gzid=4"><input type="hidden" name="nowurl" value=""><input type="hidden" name="keyword" value=""><input type="hidden" name="gzid" value="">
                <div class="gou cff"><a id="tijiao" href="javascript:;" onClick="return check();">�������  �ύ����</a></div>
            </div>
			
            <input name="tijiao" type="hidden" id="tijiao" value="yesok">
        </form>
        
    </div>

<div class="huodong2">
        <div class="hdtit">�ͻ�����</div>

<script>

function GetDateStr(AddDayCount){
	var dd = new Date();
	dd.setDate(dd.getDate()+AddDayCount);
	var y = dd.getFullYear();
	var m = dd.getMonth()+1;
	var d = dd.getDate();
	return y+"-"+m+"-"+d;
}

	var rand1=parseInt(Math.random()*22+1);	
	quotes=new Array 
<%
set rs=server.createobject("adodb.recordset")
sql="select * from news where news_list='01' order by id desc"
rs.open sql,conn,1,1 
if rs.eof and rs.bof then
else
i=0
do while not rs.eof
i=i+1
%>
	quotes[<%=i%>]=' <%=rs("news_name")%>' 
<%
rs.movenext
loop
end if
rs.close
set rs=nothing
%>

	var rand2=parseInt(Math.random()*22+1);	
	quotess=new Array
<%
set rs=server.createobject("adodb.recordset")
sql="select * from news where news_list='01' order by id desc"
rs.open sql,conn,1,1 
if rs.eof and rs.bof then
else
i=0
do while not rs.eof
i=i+1
%>
	quotess[<%=i%>]='<%=rs("news_intro")%>'
<%
rs.movenext
loop
end if
rs.close
set rs=nothing
%>
</script>
        <div class="myscroll">
        	<ul style="margin-top: -67px;">

<%
set rs=server.createobject("adodb.recordset")
sql="select * from news where news_list='01' order by id desc"
rs.open sql,conn,1,1 
if rs.eof and rs.bof then
else
i=0
do while not rs.eof
%>
        <li class="bord_l">
                <div class="bord_l"><%=rs("news_name")%></div>
                <div class="li_bord"><%=rs("news_intro")%></div>
            </li>
<%
rs.movenext
loop
end if
rs.close
set rs=nothing
%>

            </ul>
        </div>
</div>
  
    <div class="huodong2">
        <div class="hdtit">����֪ͨ</div>
        <div class="myscroll">
        	<ul style="margin-top: -48px;">
<script>
var not3chanpin=new Array("������ʿ�б� 199Ԫ ");
var not3yanse=new Array(" ���̺ڴ�+�������"," �����ش�+�������"," ���̺ڴ�+�������"," �����ش�+�������");
var not3chima=new Array();
</script>
<script>
function getfahuo(){
var not3str="";
if(not3chanpin.length !=0){not3str=not3str+not3chanpin[Math.floor((Math.random()*not3chanpin.length))];}
if(not3yanse.length !=0){not3str=not3str+not3yanse[Math.floor((Math.random()*not3yanse.length))];}
if(not3chima.length !=0){not3str=not3str+not3chima[Math.floor((Math.random()*not3chima.length))];}
return not3str;
}

function GetDateStr(AddDayCount) 
{ 
var dd = new Date(); 
dd.setDate(dd.getDate()+AddDayCount);//��ȡAddDayCount�������� 
var y = dd.getFullYear(); 
var m = dd.getMonth()+1;//��ȡ��ǰ�·ݵ����� 
var d = dd.getDate(); 
return y+" - "+m+" - "+d; 
} 
<%
set rs=server.createobject("adodb.recordset")
sql="select * from news where news_list='02' order by id desc"
rs.open sql,conn,1,1 
if rs.eof and rs.bof then
else
i=0
do while not rs.eof
%>   
document.writeln("            <li class=\"bord_l\">");
document.writeln("                <div class=\"bord_l\"><%=rs("news_name")%><\/div>");
document.writeln("                <div class=\"li_bord\"><%=rs("news_intro")%><strong>��<\/strong><\/div>");
document.writeln("            <\/li>");
<%
rs.movenext
loop
end if
rs.close
set rs=nothing
%>
</script>            
            
<%
set rs=server.createobject("adodb.recordset")
sql="select * from news where news_list='02' order by id desc"
rs.open sql,conn,1,1 
if rs.eof and rs.bof then
else
i=0
do while not rs.eof
%>           
            <li class="bord_l">
                <div class="bord_l"><%=rs("news_name")%></div>
                <div class="li_bord"><%=rs("news_intro")%><strong>��</strong></div>
            </li>
<%
rs.movenext
loop
end if
rs.close
set rs=nothing
%>
			</ul>
        </div>
        <div class="tC mar_t" style="padding-top:10px; border-top:1px solid #eee;">
        </div>
        <div class="tC mar_t beij"><img src="index/foot.jpg" class="renzheng" original="index/foot.jpg"></div>
        <div class="foot cff">
            <div id="top_btn" class="bord h48 w11" style="padding-top:15px;"><a href="index.asp#"><span class="glyphicon" style="font-size:16px;"><img src="images/icon_03.jpg" width="15" height="16" border="0"></span></a></div>
            <div class="bord h48 w30"><a href="index.asp#ydname"><span class="glyphicon"><img src="images/icon_05.jpg" width="16" height="13" border="0"></span>�����µ�</a></div>
            <div class="bord h48 w30"><a href="sms:<%=webc5%>"><span class="glyphicon"><img src="images/icon_07.jpg" width="16" height="13" border="0"></span>���Ŷ���</a></div>
            <div class="h48 w29"><a href="tel:<%=webtel%>"><span class="glyphicon"><img src="images/icon_09.jpg" width="16" height="14" border="0"></span>��ϵ�ͷ�</a></div>
        </div>
    </div>    
</div>
<script type="text/javascript">
function f(obj)
{
         
var objradio=$(obj).find(':radio[name="chicun"]');
var chicun=$(objradio).val();
$("#chiid").val(chicun);
$("#text_box1").val(1);
var danjia=$("#danjia").val();
$("#total1").html(danjia);
$("#price").val(danjia);
$(obj).addClass('mouon').siblings().removeClass('mouon');
var chicun = document.getElementsByName('chicun'); 
for(var i=0;i<chicun.length;i++){ 
$(chicun[i]).attr("checked",false);
} 	
$(objradio).attr("checked","checked");
var _kucun=$(objradio).attr("_kucun");
var _xiangou=$(objradio).attr("_xiangou");	
$("#_kucun").text(_kucun);
$("#_xiangou").text(_xiangou);
}
</script>

</body></html>