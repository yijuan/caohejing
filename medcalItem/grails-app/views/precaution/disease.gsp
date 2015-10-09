<!DOCTYPE HTML>
<html>
<head>
<title>传染病预防</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

<link href="${resource(dir:'css',file:'precaution.css') }" type="text/css" rel="stylesheet"/>

</head>

<body>
	<div id="container">
	    <div class="t_top">
	        <h2>传染病预防</h2>
	    </div>
		<div id="List">
    <g:each in="${dise}" var="d">
    <table width="98%" border="0" align="center" class="ta">
        <tr>
            <td width="30" height="25" align="center">
                <img src="${resource(dir:'images',file:'PointPic.png') }" alt=""></td>
            <td valign="top"><a href="">${d.name }</a></td> 
        </tr>
    </table>
    </g:each>
   

       </div>

		
	</div>
</body>
</html>