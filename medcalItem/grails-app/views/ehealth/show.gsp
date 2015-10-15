
<%@ page import="com.surelution.medical.Ehealth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ehealth.label', default: 'Ehealth')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ehealth" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation" id="main_content">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<%--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--%>
			</ul>
		</div>
		<div id="show-ehealth" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ehealth">
			
				<g:if test="${ehealthInstance?.fileUrl}">
				<li class="fieldcontain">
					<span id="fileUrl-label" class="property-label"><g:message code="ehealth.fileUrl.label" default="File Url" /></span>
					
						<span class="property-value" aria-labelledby="fileUrl-label"><g:fieldValue bean="${ehealthInstance}" field="fileUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ehealthInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="ehealth.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${ehealthInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ehealthInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="ehealth.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label">${ehealthInstance?.type?.name}</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ehealthInstance?.id}" />
					<g:link class="edit" action="edit" id="${ehealthInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
