<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="dbdile.label" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation" id="main_content">
			<ul>
				<li>请选择需要上传的数据库文件</li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			
			
			 <g:uploadForm>
	              <input type="file" name="dbFile"/>
	         <g:submitButton name="sub" value="上传"/>
     </g:uploadForm>
		</div>
	</body>
</html>




