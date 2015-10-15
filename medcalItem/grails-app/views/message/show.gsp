
<%@ page import="com.surelution.medical.Message" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-message" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-message" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list">
				<g:if test="${messageInstance?.keyWord}">
				<li class="fieldcontain">
					<span id="keyWord-label" class="property-label"><g:message code="message.keyWord.label" default="Key Word" /></span>	
						<span class="property-value" aria-labelledby="keyWord-label"><g:fieldValue bean="${messageInstance}" field="keyWord"/></span>	
				</li>
				</g:if>
				<g:if test="${messageInstance?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="message.message.label" default="Message" /></span>
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${messageInstance}" field="message"/></span>		
				</li>
				</g:if>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${messageInstance?.id}" />
					<g:link class="edit" action="edit" id="${messageInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
