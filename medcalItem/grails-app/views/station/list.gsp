<%@ page import="com.surelution.medical.Station" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'station.label', default: 'Station')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-station" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation" id="main_content">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-station" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="station.name.label" default="Name"/></th>
						<th><g:message code="station.phone.label" default="Phone"/></th>
						<th><g:message code="station.stationAddress.label" default="Station Address"/></th>
						<th><g:message code="station.serviceItem.label" default="Service Item"/></th>
						<th><g:message code="station.serviceTime.label" default="Service Time"/></th>
					
						<%--<g:sortableColumn property="name" title="${message(code: 'station.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'station.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="serviceItem" title="${message(code: 'station.serviceItem.label', default: 'Service Item')}" />
					
						<g:sortableColumn property="serviceTime" title="${message(code: 'station.serviceTime.label', default: 'Service Time')}" />
					
						<g:sortableColumn property="stationAddress" title="${message(code: 'station.stationAddress.label', default: 'Station Address')}" />--%>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stationInstanceList}" status="i" var="stationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td width="16%"><g:link action="show" id="${stationInstance.id}">${fieldValue(bean: stationInstance, field: "name")}</g:link></td>
					
						<td width="10%">${fieldValue(bean: stationInstance, field: "phone")}</td>
						<td>${fieldValue(bean: stationInstance, field: "stationAddress")}</td>
					
						<td>${fieldValue(bean: stationInstance, field: "serviceItem")}</td>
					
						<td>${fieldValue(bean: stationInstance, field: "serviceTime")}</td>
				
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
