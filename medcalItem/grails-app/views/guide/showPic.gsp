<!DOCTYPE HTML>
<html>
<head>
<title>站点分布及导航</title>
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
		   <p><span style="font-weight: bold;">联系电话：</span><a href="tel:${station.phone }">${station.phone }</a>&nbsp;&nbsp;&nbsp;<a href="http://apis.map.qq.com/uri/v1/routeplan?fromcoord=CurrentLocation&to=${station.name }&tocoord=${station.to_coord }&policy=0&referer=baison&type=drive&coord_type=2">导航到该位置</a></p>
		   <p><span style="font-weight: bold;">服务时间：</span>${station.serviceTime }</p>
		   <p><span style="font-weight: bold;">服务项目：</span>${station.serviceItem }</p>
		</div>
	</div>
</body>
</html>



