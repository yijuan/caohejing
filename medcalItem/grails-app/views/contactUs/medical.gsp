<!DOCTYPE HTML>
<html>
<head>
<title>就诊指南</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

<link href="${resource(dir:'css',file:'medical.css') }" type="text/css" rel="stylesheet"/>

</head>

<body>
	<div id="container" style="height: 555px;">
	    <div class="t_top">
	        <h3>卫生服务中心 - 就诊指南</h3>
	    </div>
		<div id="List">
    
    <table width="98%" border="0" align="center" class="ta">
        <tr>
            <td width="30" height="25" align="center">
                <img src="${resource(dir:'images',file:'PointPic.png') }" alt=""></td>
            <td valign="top"><a href="${createLink(action:'inpatient',controller:'contactUs')}">住院就诊指南</a></td> 
        </tr>
    </table>

    
    <table width="98%" border="0" align="center" class="ta">
        <tr>
            <td width="30" height="25" align="center">
                <img src="${resource(dir:'images',file:'PointPic.png') }" alt=""></td>
            <td valign="top"><a href="${createLink(action:'outpatient',controller:'contactUs')}">门诊就诊指南</a></td>
            
        </tr>
    </table>

    
    <table width="98%" border="0" align="center" class="ta">
        <tr>
            <td width="30" height="25" align="center">
                <img src="${resource(dir:'images',file:'PointPic.png') }" alt=""></td>
            <td valign="top"><a href="${createLink(action:'manual',controller:'contactUs')}">就诊手册</a></td>
            
        </tr>
    </table>

    
    <table width="98%" border="0" align="center" class="ta">
        <tr>
            <td width="30" height="25" align="center">
                <img src="${resource(dir:'images',file:'PointPic.png') }" alt=""></td>
            <td valign="top"><a href="${createLink(action:'service',controller:'contactUs')}">漕河泾街道社区卫生服务中心医技科服务指南</a></td>  
        </tr>
    </table>

   </div>

		
	</div>
</body>
</html>