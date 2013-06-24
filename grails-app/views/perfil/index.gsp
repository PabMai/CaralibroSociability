<%@ page import="org.caralibroteam.auth.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name='layout' content='main' />
		<title>Sociability - Mi Perfil</title>
<%--		<link href="${resource(dir:'css', file:'app.css')}" type="text/css" rel="stylesheet">--%>
	</head>
	<body>
		<div id="wrapper">
			
			<div id="container">
<%--				<img src="http://alom.hol.es/${user.id}/${user.avatar}" title="Avatar" alt="Avatar" />--%>
				<nav id="nav-main">
					<a href="${createLink(uri: '/')}" class="home">Inicio</a>|
					<a href="#">Amigos</a>|
					<a href="<g:createLink controller='photo' action='index' />">Mis Fotos</a>|
					<g:link action="show" id="${userInstance.id}">Asi ven tu perfil</g:link>|
					
				</nav>
				<h1>Perfil</h1>
				<div class="left-column">
					<div class="form-perfil">
						
						<g:form method="post" controller="Perfil" action="update">
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
							<fieldset class="">
								<g:submitButton name="update" class="save" value="${message(code: 'default.button.update.label', default: 'Update')}" />
							</fieldset>
						</g:form>
												
					</div>
<%--					<div class="mis-grupos">--%>
<%--						<p>Mis Grupos</p>--%>
<%--						<div class="div-like-btn">Grupo 1</div>--%>
<%--						<div class="div-like-btn">Grupo 2</div>--%>
<%--						<div class="div-like-btn">Grupo 3</div>--%>
<%--						<div class="div-like-btn">Grupo 4</div>--%>
<%--					</div>--%>
<%--					<div class="mis-eventos">--%>
<%--						<p>Mis Eventos</p>--%>
<%--						<div class="div-like-btn">Evento 1</div>--%>
<%--						<div class="div-like-btn">Evento 2</div>--%>
<%--						<div class="div-like-btn">Evento 3</div>--%>
<%--						<div class="div-like-btn">Evento 4</div>--%>
<%--					</div>--%>
<%--					<div class="noticias">--%>
<%--						<p>Noticias de mis amigos</p>--%>
<%--						<g:each var="user" in="${amigos}">--%>
<%--							<g:link action="show" id="${user.id}">Amigo 1</g:link>-<g:formatDate format="dd-MM-yyyy" date="${new date()}"/>:<p>Texto de noticia</p>--%>
<%--						</g:each>--%>
<%--						--%>
<%--					</div>--%>
				</div>
				<div class="right-column">
					<div class="div-estado form">
						<p>Estado(¿En que estas pensando?)</p>
						<form method="post" controller="Perfil" action="compartirestado">
							<g:textArea name="estado" value="" rows="2" cols="50"/>
							<g:submitButton name="submit-estado" value="Enviar" />
						</form>
						
					</div>
					<div class="div-mensaje form">
						<form method="post" controller="Perfil" action="mensajear">
<%--							<p>Mensaje para:</p><g:select name="amigo.id" from="${amigos.list()}" value="${amigo.id}"/>--%>
							<g:textArea name="mensaje" value="" rows="3" cols="50"/>
							<g:submitButton name="submit-mensaje" value="Enviar" />
						</form>
					</div>
				</div>
			</div>
			<div id="footer">
			
			</div>
		</div>
	</body>
</html>