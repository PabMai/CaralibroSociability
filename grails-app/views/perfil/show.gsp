<%@ page import="org.caralibroteam.auth.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title>Sociability - Perfil de usuario</title>
<%--		<link href="${resource(dir:'css', file:'app.css')}" type="text/css" rel="stylesheet">--%>
	</head>
	<body>
	<div id="wrapper">

			<div id="container">
<%--				<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
<%--				<img src="http://alom.hol.es/${user.id}/${user.avatar}" title="Avatar" alt="Avatar" />--%>
				<nav id="nav-main">
					<a href="${createLink(uri: '/')}" class="home">Inicio</a>|
					<a href="#">Amigos</a>|
					<g:link class="show" controller="photo" action="show" id="${userInstance.id}">Fotos</g:link>|
					<g:link class="index" controller="photo" action="index">Mis Fotos</g:link>|
					<g:link class="index" controller="perfil" action="index">Mi Perfil</g:link>|
					
				</nav>
				<h1>Perfil</h1>
			
<%--				<div id="show-perfil" class="content scaffold-show" role="main">--%>
<%--					<h1><g:message code="default.show.label" args="[entityName]" /></h1>--%>
<%--					<g:if test="${flash.message}">--%>
<%--					<div class="message" role="status">${flash.message}</div>--%>
<%--					</g:if>--%>
					<img src="${resource(dir:'images', file:'imgHolderAvatar.png')}" title="Avatar" alt="Avatar"/>
					<ol class="property-list person">
					
						<g:if test="${userInstance?.username}">
						<li class="fieldcontain">
							<span id="name-label" class="property-label"><g:message code="person.name.label" default="Username" /></span>
							<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
							
						</li>
						</g:if>
		<%--				<g:if test="${userInstance?.estado}">--%>
		<%--				<li class="fieldcontain">--%>
		<%--					<span id="name-label" class="property-label"><g:message code="person.estado.label" default="Estado" /></span>--%>
		<%--					<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="estado"/></span>--%>
		<%--					--%>
		<%--				</li>--%>
		<%--				</g:if>--%>
						
					
					</ol>
					<g:form>
						<fieldset >
							<g:hiddenField name="id" value="${userInstance?.id}" />
							<g:link controller="perfil" action="pediramistad" id="${userInstance?.id}">Pedir amistad</g:link>
							
						</fieldset>
					</g:form>
<%--				</div>--%>
			</div>
			<div id="footer">
			
			</div>
		</div>
	</body>
</html>
