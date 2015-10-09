<!DOCTYPE HTML>
<html>
<head>
<title>中医养生</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

<link href="${resource(dir:'css',file:'precaution.css') }" type="text/css" rel="stylesheet"/>

</head>

<body>
	<div id="container">
	    <div class="t_top">
	        <h2>中医养生</h2>
	    </div>
		<div id="List">
    <g:each in="${med}" var="m">
    <table width="98%" border="0" align="center" class="ta">
        <tr>
            <td width="30" height="25" align="center">
                <img src="${resource(dir:'images',file:'PointPic.png') }" alt=""></td>
            <td valign="top"><a href="">${m.name }</a></td> 
        </tr>
    </table>
    </g:each>
       </div>	
	</div>
</body>
</html>