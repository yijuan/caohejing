<%@ page import="com.surelution.medical.Message" %>


<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'keyWord', 'error')} ">
	<label for="keyWord">
		<g:message code="message.keyWord.label" default="Key Word" />	
	</label>
	<g:textField name="keyWord" value="${messageInstance?.keyWord}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'message', 'error')} ">
	<label for="message">
		<g:message code="message.message.label" default="message" />	
	</label>
	<%--<g:textField name="fileUrl" value="${ehealthInstance?.fileUrl}"/>--%>
	<g:textArea name="message" value="${messageInstance?.message }"></g:textArea>
</div>
