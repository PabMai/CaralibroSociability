<%@ page import="org.caralibroteam.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nombreEvento', 'error')} required">
	<label for="nombreEvento">
		<g:message code="evento.nombreEvento.label" default="Nombre Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreEvento" maxlength="30" required="" value="${eventoInstance?.nombreEvento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="evento.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="500" required="" value="${eventoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'lugar', 'error')} required">
	<label for="lugar">
		<g:message code="evento.lugar.label" default="Lugar" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lugar" maxlength="30" required="" value="${eventoInstance?.lugar}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="evento.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${eventoInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="evento.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hora" maxlength="5" required="" value="${eventoInstance?.hora}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="evento.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${org.caralibroteam.auth.Person.list()}" optionKey="id" required="" value="${eventoInstance?.person?.id}" class="many-to-one"/>
</div>

