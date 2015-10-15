<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favoc.png')}" type="image/x-icon">
		<%--<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">--%>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	<div id="container">
	          <div id="header">
	    		<div class="header_box">
		    			<img style="border: 0 none;float:left;" src="${resource(dir:'images',file:'title.png') }" width="600px" height="60px"/>
		    			<div style='float: right;font-size:12px;padding-top:50px;'>
					当前用户：<sec:username />&nbsp;&nbsp;<a href="${createLink(action:'showChangePwd',controller:'user') }" style="color:black;font-weight:normal;">更改密码</a>&nbsp;&nbsp;<a href="${createLink(action:'index', controller:'logout')}" style="color:black;font-weight:normal;">退出</a>
		    			</div>	
		    	</div>
		    	
		    	
		    	<div id="leftcol">
				
				<sec:ifAnyGranted roles="ROLE_ADMIN">
				<p>
					<g:link url="${resource(dir:'user')}"  >用户管理</g:link>
				</p>
				
				<p >
					<g:link url="${resource(dir:'dbMaintain')}" >上传数据库文件</g:link>
				</p>
				
				<p >
					<g:link url="${resource(dir:'station')}">维护站点</g:link>
				</p>
				
				<p >
					<g:link url="${resource(dir:'ehealth')}">管理健康E站</g:link>
				</p>
				
				<p >
					<g:link url="${resource(dir:'doctor')}">医生介绍</g:link>
				</p>
				<p >
					<g:link url="${resource(dir:'message')}">信息回复管理</g:link>
				</p>
				</sec:ifAnyGranted>
				</div>
	         </div>      
		<g:layoutBody/>
		</div>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
		
	</body>
</html>
