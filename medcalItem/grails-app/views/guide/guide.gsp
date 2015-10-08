<!DOCTYPE HTML>
<html>
<head>
<title>站点分布及导航</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

<link href="${resource(dir:'css',file:'guide.css') }" type="text/css" rel="stylesheet"/>



</head>

<body>
	<div id="container">
		<div class="t_top">
		  <h2>附近的站点分布</h2>
		</div>

        <div style=" margin-bottom:20px; margin-left:10px;">
           <p>社区卫生服务中心：</p>
           <p>中心地址：徐汇区宾阳路38号</p>
           <p>联系电话：54113581,54113581总值班（双休日）</p>
           <p>邮箱：chjddyy@xh.sh.cn</p>   
        </div>


		<div class="t_bottom">
		    <div style="padding: 3px;">
			  <table class="table table-bordered" cellpadding="1" cellspacing="0" style="border-radius:10px; border-color: gray;">
				<thead>
				<tr>
					<td width="120" height="43" style="color:white; font-weight:bold ;font-size:18px;">名称</td>
					<td width="" style=" color:white;font-weight:bold ;font-size:18px;">地址</td>
					<td width="80" style=" color:white;font-weight:bold;font-size:18px;">电话</td>
				</tr>
				</thead>
			
                <tbody>
                <g:each in="${stalist }" var="l">
				<tr>
					<td height="70">
					<a href="${createLink(action:'showPic',controller:'guide',id:l.id)}">${l.name }</a></td>
					<td>${l.stationAddress }</td>
					<td>${l.phone }</td>
	            </tr>
	            </g:each>
				</tbody>
				
			</table>
			</div>
     
		</div>
	</div>
</body>
</html>



