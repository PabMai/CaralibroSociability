
<head>
	<meta name='layout' content='main' />
	<title><g:message code="login"/></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>

<body>

<div id="divContenido">	

		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>

		<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
			<p>
				<label for='username'><g:message code="Username"/>:</label>
				<input type='text_' class='text_' name='j_username' id='username'/>
			</p>

			<p>
				<label for='password'><g:message code="Password"/>:</label>
				<input type='password' class='text_' name='j_password' id='password'/>
			</p>

<%--			<p id="remember_me_holder">--%>
<%--				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>--%>
<%--				<label for='remember_me'><g:message code="rememberme"/></label>--%>
<%--			</p>--%>

			<p>
				<input type='submit' id="submit" value='${message(code: "Log-In")}'/>
			</p>
		</form>
	</div>


<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>

