
<%@ page import="com.surelution.medical.Ehealth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ehealth.label', default: 'Ehealth')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
			<table>
				<thead>
					<tr>
					    <g:sortableColumn property="name" title="${message(code: 'ehealth.name.label', default: 'Name')}" />
						<g:sortableColumn property="fileUrl" title="${message(code: 'ehealth.fileUrl.label', default: 'File Url')}" />
					
						<th><g:message code="ehealth.type.label" default="Type" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ehealthInstanceList}" status="i" var="ehealthInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					    <td><g:link action="show" id="${ehealthInstance.id}">${fieldValue(bean: ehealthInstance, field: "name")}</g:link></td>
						<td>${fieldValue(bean: ehealthInstance, field: "fileUrl")}</td>
						<td>${ehealthInstance.type.name}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ehealthInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
