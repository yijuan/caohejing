<%@ page import="com.surelution.medical.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="doctor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${doctorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'introduction', 'error')} ">
	<label for="introduction">
		<g:message code="doctor.introduction.label" default="Introduction" />
		
	</label>
	<g:textField name="introduction" value="${doctorInstance?.introduction}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'station', 'error')} required">
	<label for="station">
		<g:message code="doctor.station.label" default="Station" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="station" name="station.id" from="${com.surelution.medical.Station.list()}" optionValue="name" optionKey="id" required="" value="${doctorInstance?.station?.id}" class="many-to-one"/>
</div>

