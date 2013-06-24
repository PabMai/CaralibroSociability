<!DOCTYPE html>
<html>
	<head>
		<meta name='layout' content='main' />
		<title>Sociability - Mis Fotos</title>
<%--		<link href="${resource(dir:'css', file:'app.css')}" type="text/css" rel="stylesheet">--%>
	</head>
	<body>
		<div id="wrapper">

			<div id="container">
				<img src="../images/imgHolderAvatar.png" title="Avatar" alt="Avatar"/>
				<nav id="nav-main">
					<a href="http://localhost:8080/sociability">Inicio</a>|
					<a href="#">Amigos</a>|
					<g:link class="create" action="create">Subir Foto</g:link>|
					<g:link controller="perfil" action="index" >Mi Perfil</g:link>|
					<g:link controller="Evento" action="list">Mis Eventos</g:link>|
					<g:link controller="Amistad" action="index">Lista Usuarios</g:link>
					
				</nav>
				<h1>Mis Fotos</h1>
				<div class="submenu">
					<ul class="actions">
						<li></li>
					</ul>
				</div>
				<div class="span-20">
					<g:each in="${photos}" var="photo">
						<div class="summary">
						
							<p>Nombre:${photo.name}</p>
							<p>Título:${photo.title }</p>
							<p>Subido el dia:${photo.dateUploaded }</p>
						</div>
						<div class="photo">
							<img alt="${photo.title }" src="http://alom.hol.es/${photo.id}" />
						</div>
					</g:each>
					
				</div>
			</div>
			<div id="footer">
			
			</div>
		</div>
	</body>
</html>
