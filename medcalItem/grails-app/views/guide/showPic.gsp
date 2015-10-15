<!DOCTYPE HTML>
<html>
<head>
<title>家医团队简介</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

</head>

<body>
	<div id="container" style="margin: 0px; padding: 0px;">
	    <div style="width: 130px; height: 350px; max-width: 100%;">
		<img src="${createLink(action:'show',controller:'guide',id:station.id)}" alt=""  style=" width: 355px;">
		</div>
		<div style="margin-left: 10px;">
		   <table>
		      <tr><td width="30%" height="30px" style="line-height: 40px; font-weight: bold;">联系电话：</td><td><a href="tel:${station.phone }">${station.phone }</a>&nbsp;&nbsp;&nbsp;<a href="http://apis.map.qq.com/uri/v1/routeplan?fromcoord=CurrentLocation&to=${station.name }&tocoord=${station.to_coord }&policy=0&referer=baison&type=drive&coord_type=2">导航到该位置</a></td></tr>
		      <tr><td height="70px" style="line-height: 70px; font-weight: bold;">服务时间：</td><td>${station.serviceTime }</td></tr>
		      <tr><td height="50px" style="line-height: 50px; font-weight: bold;">服务项目：</td><td>${station.serviceItem }</td></tr>
		   </table>
		   <div>
		      <div style=" width:30%; float: left; font-weight: bold; margin-top: 15px">医生介绍:</div>
		      <div style=" width:50%; float: left;">
		         <g:each in="${doctors }" var="d">
		           <a href="${createLink(action:'showDoctor',controller:'guide',id:d.id) }"> <p>${d.name }</p></a> 
		         </g:each>
		      </div>
		   </div>
	</div>
	</div>
</body>
</html>



