 	<legend>Datos Personales:</legend>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
		<label for="username">
			<g:message code="person.username.label" default="Username" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="username" value="${userInstance?.username}"/>
	</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
		<label for="password">
			<g:message code="person.password.label" default="Password" />
			<span class="required-indicator">*</span>
		</label>
		<g:passwordField name="password" value="" />
	</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
		<label for="repassword">
			<g:message code="person.password.label" default="RePassword" />
			<span class="required-indicator">*</span>
		</label>
		<g:passwordField name="repassword" value="" />
	</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
		<label for="email">
			<g:message code="person.email.label" default="Email" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="email" value="${userInstance?.email}"/>
	</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required">
		<label for="nombre">
			<g:message code="person.nombre.label" default="Nombre" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="nombre" value="${userInstance?.nombre}"/>
	</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'apellido', 'error')} required">
		<label for="apellido">
			<g:message code="person.apellido.label" default="Apellido" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="apellido" value="${userInstance?.apellido}"/>
	</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sexo', 'error')} required">
		<label for="sexo">
			<g:message code="person.sexo.label" default="Sexo" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="sexo" value="${userInstance?.sexo}"/>
	</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fechaNacimiento', 'error')} required">
		<label for="nacimiento">
			<g:message code="person.fechaNacimiento.label" default="Nacimiento" />
			<span class="required-indicator">*</span>
		</label>
		<g:datePicker name="nacimiento" value="${UserInstance?.fechaNacimiento}" default="${UserInstance?.fechaNacimiento}" precision="day" />
	</div>
<%--	<div class="divLabel">Nombre de usuario:</div>--%>
<%--	<div class="divTextBox"><g:textField name="username" value="${userInstance.username}" /></div>--%>
<%--	<div class="divLabel">Password:</div>--%>
<%--	<div class="divTextBox"><g:passwordField name="password" value="" /></div>--%>
<%--	<div class="divLabel">Re-Password:</div>--%>
<%--	<div class="divTextBox"><g:passwordField name="repassword" value="" /></div>--%>
<%--	<div class="divLabel">Nombre:</div>--%>
<%--	<div class="divTextBox"><g:textField name="nombre" value="${userInstance.nombre}" /></div>--%>
<%--	<div class="divLabel">Apellido:</div>--%>
<%--	<div class="divTextBox"><g:textField name="apellido" value="${userInstance.apellido}" /></div>--%>
<%--	<div class="divLabel">Email:</div>--%>
<%--	<div class="divTextBox"><g:textField name="email" value="${userInstance.email}" /></div>--%>
<%--	<div class="divLabel">Fecha de Nacimiento:</div>--%>
<%--	<div class="divTextBox"><g:datePicker name="nacimiento" value="${UserInstance?.fechaNacimiento}" default="${new Date()}"/></div>--%>
<%--	<div class="divLabel">Sexo:</div>--%>
<%--	<div class="divTextBox"><g:textField name="sexo" value="${userInstance.sexo}" /></div>--%>