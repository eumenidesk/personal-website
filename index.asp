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
		speed: 40, //数值越大，速度越慢
		rowHeight:68 //li的高度
	});
	$('.myscrolls').myScroll({
		speed: 40, //数值越大，速度越慢
		rowHeight:18 //li的高度
	});
});
</script>
<!-- //先载入jquery -->

<!-- //再载入lazyload -->
<script type="text/javascript" src="index/jquery.lazyload.js"></script>
<script type="text/javascript">
$(document).ready(
function(){
$("img").lazyload({
     placeholder : "index/grey.gif", //加载图片前的占位图片
     effect      : "fadeIn" //加载图片使用的效果(淡入)
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
        <li class="marright5">官方认证</li>
        <li class="marright5">货到付款</li>
        <li>七天无理由退款</li>
    </dd>
    </dl>
</div>    
    <div class="banner"><p><img title="<%=webc1%> 主图" src="managesystem/<%=img1%>" original="managesystem/<%=img1%>"></p></div>
  	<div class="container-fluid f12">
        <div class="row">
            <div class="col-xs-7 h54 bf6">
                <div class="jiage">￥<span><%=webc2%></span></div>
                <dl class="yishou">
                    <dt><s>￥<%=webc1%>元</s></dt>
                    <dd><%=webc6%> 件已售</dd>
                </dl>
            </div>
            <div class="col-xs-5 h54 p_x">
                <dl class="time tC">
                    <dt>活动倒计时</dt>
                    <dd>
                    <div class="time-count">
                        <div id="remainTime_1" class="jltimer"><span>活动已经结束</span></div>
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
        <div class="s_title">官方旗舰店销售，货到付款，7天无理由退款！</div>
        <div class="baoyou">
            <span class="by">顺丰包邮</span>
            <span class="huo">货到付款</span>
            <span class="tui">七天无理由退款</span>
        </div>
        <div class="gou cff"><a href="#ydname">立即抢购</a></div>
    </div>
    
    <div class="huodong">
        <div class="hdtit">活动说明</div>
        <div class="hdjs"><p><%=web1%></p></div>
    </div>
    
    <div class="huodong" style="padding-bottom:0px;">
        <div class="hdtit">购买流程</div>
        <div class="lcpic"><p><%=web2%></p></div>
    </div>   
    
    <div class="huodong2">
        <div class="hdtit">产品详细介绍</div>
        <div class="cpxx img_div"><p><%=web3%></p>
</div>
    </div>
    
    <div class="huodong" id="ydname">
        <div class="hdtit c00">订单信息填写</div>
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
                <div class="product">款式选择<span>*</span></div>
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
 
                <div class="product">颜色选择<span>*</span></div>
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

                
                <div class="product">购买数量<span>*</span></div>
                <div class="numb">
                	<span><input id="min1" name="" type="button" value="-"></span>
                    <em><input id="text_box1" name="mun" type="text" value="1" onFocus="this.blur()"></em>
                    <span><input id="add1" name="" type="button" value="+" onFocus="this.blur()"></span>
                    <p>库存 <b class="zhuhong" id="_kucun"></b> 件，每人限购 <b class="zhuhong" id="_xiangou"></b> 件</p>
                    <input id="danjia" name="danjia" type="hidden" value="199">
                    <input id="action" name="action" type="hidden" value="order">
                    <input id="zhuid" name="zhuid" type="hidden" value="1">
                    <input id="kuanid" name="kuanid" type="hidden" value="0">
                    <input id="chiid" name="chiid" type="hidden" value="0">
                    <input name="price" id="price" value="199" type="hidden">
                </div>
                
                <div class="product">商品总价<span>*</span></div>
                                <!---商品加减算总数---->
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
					layer.msg('请选择款式！',1,-1);
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
      layer.msg('请选择要购买颜色！',1,-1);
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
      layer.msg('请选择要购买尺码！',1,-1);
      return false;
      }
   }
}catch(ex){}
				
				var _xiangou=$("#_xiangou").text();
				_xiangou=parseInt(_xiangou);
				
				if(_xiangou==t.val())
				{
					
					layer.msg("每人限购"+_xiangou+"件",1,-1);
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
					layer.msg('请选择款式！',1,-1);
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
      layer.msg('请选择要购买颜色！',1,-1);
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
      layer.msg('请选择要购买尺码！',1,-1);
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
				layer.msg('请选择款式！',1,-1);
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
					layer.msg('请选择款式！',1,-1);
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
                    <span class="mouon f18">￥ <b id="total1">199</b> 元</span>
                </div>
                
                <div class="product">付款方式<span>*</span></div>
                <div class="car">
                    <span class="mouon f18 carbg">货到付款</span>
                    <span class="baoy" style="border:none; padding-left:6px;">支持全国货到付款，免邮费！</span>
                </div>
                
                <div class="product">收货人姓名<span>*</span></div>
                <div class="pad"><input type="text" name="name" class="form-control bod2" placeholder="请输入收货人的姓名或者称呼"></div>
                
                <div class="product">联系手机<span>*</span></div>
                <div class="pad"><input type="tel" name="mob" class="form-control bod2" placeholder="请输入您的手机号码" maxlength="11" onKeyUp="this.value=this.value.replace(/\D/g,&#39;&#39;)"></div>
                
                <div class="product">所在地区<span>*</span></div>
                 <div class="pad">
                    <select id="s_province" name="province" class="form-control bod2"><option value="所属省份">所属省份</option><option value="北京市">北京市</option><option value="天津市">天津市</option><option value="上海市">上海市</option><option value="重庆市">重庆市</option><option value="河北省">河北省</option><option value="山西省">山西省</option><option value="内蒙古">内蒙古</option><option value="辽宁省">辽宁省</option><option value="吉林省">吉林省</option><option value="黑龙江省">黑龙江省</option><option value="江苏省">江苏省</option><option value="浙江省">浙江省</option><option value="安徽省">安徽省</option><option value="福建省">福建省</option><option value="江西省">江西省</option><option value="山东省">山东省</option><option value="河南省">河南省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="广东省">广东省</option><option value="广西">广西</option><option value="海南省">海南省</option><option value="四川省">四川省</option><option value="贵州省">贵州省</option><option value="云南省">云南省</option><option value="西藏">西藏</option><option value="陕西省">陕西省</option><option value="甘肃省">甘肃省</option><option value="青海省">青海省</option><option value="宁夏">宁夏</option><option value="新疆">新疆</option><option value="香港">香港</option><option value="澳门">澳门</option><option value="台湾省">台湾省</option></select>
                    <select id="s_city" name="city" class="form-control bod2 mar_t"><option value="所属地级市">所属地级市</option></select>
                    <select id="s_county" name="area" class="form-control bod2"><option value="所属市、县级市">所属市、县级市</option></select>
                    <script class="resources library" src="index/area.js" type="text/javascript"></script>
                    <script type="text/javascript">_init_area();</script>
                    <script type="text/javascript">
					var Gid  = document.getElementById ;
					var showArea = function(){
						Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
						Gid('s_city').value + " - 县/区" + 
						Gid('s_county').value + "</h3>"
					}
					Gid('s_county').setAttribute('onchange','showArea()');
					</script>
                </div>
                
                <div class="product">详细地址<span>*</span></div>
                <div class="pad"><input type="text" name="address" class="form-control bod2" placeholder="请输入您的详细地址，方便快递员上门送货"></div>
                
                <div class="product">备注信息 （选填）</div>
                <div class="pad"><textarea name="guest" class="form-control bod2" rows="3" placeholder="请输入您对商品的特殊要求，如商品颜色、数量等"></textarea></div>
                <!--
                <div class="product">请输入下方右侧验证码<span>*</span></div>
                <div class="pad" style="height:60px;"><input type="text" name="yzm" placeholder="输入验证码" class="form-control bod2" maxlength="4" style="width:120px; text-align:center; float:left;"><img src="index/grey.gif" onclick="javascript:this.src=&#39;code.php?tm=&#39;+Math.random();" style="float:left; border:1px solid #dedede; height:46px; margin-left:20px;" original="code.php"></div>
                --> 
                <script>getfrom();</script><input type="hidden" name="fromurl" value="http://www.gzyangs.com/?gzid=4"><input type="hidden" name="nowurl" value=""><input type="hidden" name="keyword" value=""><input type="hidden" name="gzid" value="">
                <div class="gou cff"><a id="tijiao" href="javascript:;" onClick="return check();">我填好了  提交订单</a></div>
            </div>
			
            <input name="tijiao" type="hidden" id="tijiao" value="yesok">
        </form>
        
    </div>

<div class="huodong2">
        <div class="hdtit">客户评价</div>

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
        <div class="hdtit">发货通知</div>
        <div class="myscroll">
        	<ul style="margin-top: -48px;">
<script>
var not3chanpin=new Array("经典绅士男表 199元 ");
var not3yanse=new Array(" 金盘黑带+尼龙表带"," 金盘棕带+尼龙表带"," 银盘黑带+尼龙表带"," 银盘棕带+尼龙表带");
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
dd.setDate(dd.getDate()+AddDayCount);//获取AddDayCount天后的日期 
var y = dd.getFullYear(); 
var m = dd.getMonth()+1;//获取当前月份的日期 
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
document.writeln("                <div class=\"li_bord\"><%=rs("news_intro")%><strong>√<\/strong><\/div>");
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
                <div class="li_bord"><%=rs("news_intro")%><strong>√</strong></div>
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
            <div class="bord h48 w30"><a href="index.asp#ydname"><span class="glyphicon"><img src="images/icon_05.jpg" width="16" height="13" border="0"></span>立即下单</a></div>
            <div class="bord h48 w30"><a href="sms:<%=webc5%>"><span class="glyphicon"><img src="images/icon_07.jpg" width="16" height="13" border="0"></span>短信订购</a></div>
            <div class="h48 w29"><a href="tel:<%=webtel%>"><span class="glyphicon"><img src="images/icon_09.jpg" width="16" height="14" border="0"></span>联系客服</a></div>
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