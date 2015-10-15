<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="dbdile.label" /></title>
		<script type="text/javascript" src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }"></script>
		
		<script type="text/javascript">
		   $("document").ready(function(){
		     $("#fileUpload").change(function() {
		        var fileName = $("#fileUpload").val();
		        var typeName = (fileName.substring(fileName.lastIndexOf(".")+1,fileName.length)).toLowerCase(); 
		        if(typeName!="mdb"){
                      alert("上传数据库文件格式不正确！请重新上传。")
                      window.location.href="${createLink(action:'index',controller:'dbMaintain')}"
			        }
		    });
		});
		</script>
	</head>
	
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation" id="main_content">
			<ul>
				<li>请选择需要上传的数据库文件</li>
			</ul>
		</div>
		<div>
		  <p>注意：</p>
		  <p>只能上传.mdb文件</p>
		</div>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
	   </g:if>
		<br>
		<div id="show-user" class="content scaffold-show" role="main">
			 <g:uploadForm>
	              <input type="file" name="dbFile" accept=".mdb" id="fileUpload"/>
	         <g:submitButton name="sub" value="上传"/>         
     </g:uploadForm>
		</div>	
	</body>
</html>




