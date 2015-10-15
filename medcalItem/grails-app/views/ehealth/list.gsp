
<%@ page import="com.surelution.medical.Ehealth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<g:set var="entityName" value="${message(code: 'ehealth.label', default: 'Ehealth')}" />
		<title><g:message code="default.aalist.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ehealth" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation" id="main_content">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ehealth" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<form action="list">
			<div> 
			   <label>按照名字进行查询</label>
			   <input type="text" name="ehealthName" value="${params.ehealthName }"/>
			   <input type="submit" value="搜索">
			</div>
			</form>
			<br>
			<form action="list">
			<div> 
			   <label>按照类型进行查询</label>
			   <g:select id="type" name="typeName" from="${com.surelution.medical.Type.list()}" optionValue="name" optionKey="id" required="" value="${params.typeName }"/>
			   <input type="submit" value="搜索">
			</div>
			</form>
			
			<br>
			
			<table>
				<thead>
					<tr>
					    <%--<g:sortableColumn property="name" title="${message(code: 'ehealth.name.label', default: 'Name')}" />--%>
						<th><g:message code= "ehealth.name.label" default= "Name"/>
						<th><g:message code="ehealth.type.label" default="Type" /></th>
						<th><g:message code="ehealth.fileUrl.label" default="File Url"/></th>
						<%--<g:sortableColumn property="fileUrl" title="${message(code: 'ehealth.fileUrl.label', default: 'File Url')}" />--%>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ehealthInstanceList}" status="i" var="ehealthInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					    <td width="25%"><g:link action="show" id="${ehealthInstance.id}">${fieldValue(bean: ehealthInstance, field: "name")}</g:link></td>
						<td width="15%">${ehealthInstance.type.name}</td>
						<td width="60%">${fieldValue(bean: ehealthInstance, field: "fileUrl")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div class="pagination">
				<g:paginate total="${ehealthInstanceTotal}" params="${params}"/>
			</div>
			
		</div>
	</body>
</html>
