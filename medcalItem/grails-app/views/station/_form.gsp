<%@ page import="com.surelution.medical.Station" %>


<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="station.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${stationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="station.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${stationInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'serviceItem', 'error')} ">
	<label for="serviceItem">
		<g:message code="station.serviceItem.label" default="Service Item" />
		
	</label>
	<g:textField name="serviceItem" value="${stationInstance?.serviceItem}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'serviceTime', 'error')} ">
	<label for="serviceTime">
		<g:message code="station.serviceTime.label" default="Service Time" />
		
	</label>
	<g:textField name="serviceTime" value="${stationInstance?.serviceTime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'stationAddress', 'error')} ">
	<label for="stationAddress">
		<g:message code="station.stationAddress.label" default="Station Address" />
		
	</label>
	<g:textField name="stationAddress" value="${stationInstance?.stationAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'to_coord', 'error')} ">
	<label for="to_coord">
		<g:message code="station.to_coord.label" default="Tocoord" />
		
	</label>
	<g:textField name="to_coord" value="${stationInstance?.to_coord}"/>
</div>

