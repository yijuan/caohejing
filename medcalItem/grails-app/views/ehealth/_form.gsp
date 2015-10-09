<%@ page import="com.surelution.medical.Ehealth" %>



<div class="fieldcontain ${hasErrors(bean: ehealthInstance, field: 'fileUrl', 'error')} ">
	<label for="fileUrl">
		<g:message code="ehealth.fileUrl.label" default="File Url" />
		
	</label>
	<g:textField name="fileUrl" value="${ehealthInstance?.fileUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ehealthInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="ehealth.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${ehealthInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ehealthInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="ehealth.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${com.surelution.medical.Type.list()}" optionValue="name" optionKey="id" required="" value="${ehealthInstance.type?.id}" class="many-to-one"/>
</div>

