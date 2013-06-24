<%@ page import="org.caralibroteam.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-photo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-photo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list photo">
			<g:each in="${photos}" var="photoInstance">
				<g:if test="${photoInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="photo.name.label" default="Name" /></span>
					<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${photoInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="photo.title.label" default="Title" /></span>
					<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${photoInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.dateUploaded}">
				<li class="fieldcontain">
					<span id="dateUploaded-label" class="property-label"><g:message code="photo.dateUploaded.label" default="Date Uploaded" /></span>
					<span class="property-value" aria-labelledby="dateUploaded-label"><g:formatDate date="${photoInstance?.dateUploaded}" /></span>
					
				</li>
				</g:if>
				<g:if test="${photoInstance?.id}">
				<li class="fieldcontain">
					<img alt="${photoInstance.title }" src="http://alom.hol.es/${userInstance.id}/${photoInstance.name}" />
				</li>
				</g:if>
			</g:each>
			</ol>
			
		</div>
	</body>
</html>
