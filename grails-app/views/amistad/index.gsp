<%@ page import="org.caralibroteam.auth.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title>Sociability - Amistad</title>
		<link href="${resource(dir:'css', file:'app.css')}" type="text/css" rel="stylesheet">
	</head>
	<body>

			<img src="../images/imgHolderAvatar.png" title="Avatar" alt="Avatar"/>
				<nav id="nav-main">
					<a href="http://localhost:8080/sociability">Inicio</a>|
					<g:link controller="amistad" action="index" >Amigos</g:link>|
					<a href="http://localhost:8080/sociability/photo/create">Subir Foto</a>|
					<g:link controller="perfil" action="index" >Mi Perfil</g:link>
				</nav>
<%--		<a href="#list-photo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
<%--		<div class="nav" role="navigation">--%>
<%--			<ul>--%>
<%--				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
<%--				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
		<div id="list-person" class="content scaffold-list" role="main">
			<h1><g:message code="Lista de Amigos"  /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'person.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'person.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'person.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: personInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "apellido")}</td>
					
						<td>${personInstance.email}" </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
<%--			<div class="pagination">--%>
<%--				<g:paginate total="${personInstanceTotal}" />--%>
<%--			</div>--%>
		</div>
	</body>
</html>