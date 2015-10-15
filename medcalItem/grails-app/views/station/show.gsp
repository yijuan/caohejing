
<%@page import="java.util.ResourceBundle.Control"%>
<%@ page import="com.surelution.medical.Station" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'station.label', default: 'Station')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-station" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation" id="main_content">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-station" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list station">
			
				<g:if test="${stationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="station.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${stationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stationInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="station.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${stationInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stationInstance?.serviceItem}">
				<li class="fieldcontain">
					<span id="serviceItem-label" class="property-label"><g:message code="station.serviceItem.label" default="Service Item" /></span>
					
						<span class="property-value" aria-labelledby="serviceItem-label"><g:fieldValue bean="${stationInstance}" field="serviceItem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stationInstance?.serviceTime}">
				<li class="fieldcontain">
					<span id="serviceTime-label" class="property-label"><g:message code="station.serviceTime.label" default="Service Time" /></span>
					
						<span class="property-value" aria-labelledby="serviceTime-label"><g:fieldValue bean="${stationInstance}" field="serviceTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stationInstance?.stationAddress}">
				<li class="fieldcontain">
					<span id="stationAddress-label" class="property-label"><g:message code="station.stationAddress.label" default="Station Address" /></span>
					
						<span class="property-value" aria-labelledby="stationAddress-label"><g:fieldValue bean="${stationInstance}" field="stationAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stationInstance?.to_coord}">
				<li class="fieldcontain">
					<span id="to_coord-label" class="property-label"><g:message code="station.to_coord.label" default="Tocoord" /></span>
					
						<span class="property-value" aria-labelledby="to_coord-label"><g:fieldValue bean="${stationInstance}" field="to_coord"/></span>
					
				</li>
				</g:if>
				
				<li class="fieldcontain">
				<span class="property-label">站点图片</span>		
				    <span> 
				       <g:uploadForm name="savePic" action="savePic" enctype= "multipart/form-data">
	                   <input type="file" name="stationPic" accept="image/*"/>
	                   <input type="hidden" name="id" value="${stationInstance?.id}">
	                   <g:submitButton name="savePic" value="上传"/>
                       </g:uploadForm>  
                    </span>
				</li>
				
			<%--<g:if test="${picList}">
				<li class="fieldcontain">
					<span id="pictureList-label" class="property-label">图片</span>
						<table>
						   <g:each in="${picList }" var="sp">
								<tr style="height: 220px">
									   <td><img src="${createLink(uri:sp.file)}" style="width: 220px; height:220px"/></td>
									   <td><a href="${createLink(action:'deletePic',controller:'station',id:sp.id)}">x</a></td>	   
								</tr>
							</g:each>	
						</table>
				</li>
          </g:if>
				
			--%>
			<g:if test="${pic}">
			  <li class="fieldcontain">
					<span id="pictureList-label" class="property-label">图片</span>
						<table>
								<tr style="height: 220px">
									   <td><img src="${createLink(action:'path',controller:'DynImage',id:stationInstance.id) }" style="width: 220px; height:220px"/></td>
									   <td><a href="${createLink(action:'deletePic',controller:'station',id:stationInstance.id)}">x</a></td>   
								</tr>
						</table>
				</li>
			</g:if>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${stationInstance?.id}" />
					<g:link class="edit" action="edit" id="${stationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
