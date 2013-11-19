<div class="cForm-Acceder">
	<div id="cForm-acceder-center">
	<h1 class="title-form">&iexcl;Bienvenidos!</h1>
	<form  id="form-login-registro" action="procesos/autenticar.php" method="post">
			
		<div>	
			<label>R.U.C </label>
			<input id="txtRUCAcceder" maxlength="11" class="pull-left inputRegistro" type="text" name="rucLogin"/><div id="errorRUC" class="form-error-msg pull-left">(*)</div>
			<div class="clear"></div>
			<label>Contraseña </label> 
			<input id="txtContraseniaAcceder" class="pull-left inputRegistro" type="password" name="claveAcceso" /><div id="errorContrasenia" class="form-error-msg pull-left">(*)</div>
			<div class="clear"></div>
		</div>
		
		<p>Si no tienes cuenta <a href="index.php?pag=registrate">Regístrate</a></p>
		<input id="btnIniciarSesion" class="btn btn-info" type="submit" value="Ingresar" />
		<p>Olvide mi contrase&ntilde;a. <a href="#">Recordar</a> </p>
		<p id="msgVerifiqueCampos" class="errorFailedLoginMsg datos-no-validos-acceder"></p>
		<div id="mensaje-error-inicioSesion" class="text-error"></div>	
	</form>
	</div>
</div>
				
<!--
				<div class="clear"></div>
				<p class="preguntaLogin">&iquest;Tiene clave de acceso para "La tiendita de la Esquina"?</p>
				<div class="label-input">
					<input class="radiosAcceder" div-target="#cForm-registro1" button-type="button" action-form="procesos/registrarEmpresa.php" type="radio" name="estadoUsuario" value="Nuevo" checked/>
					<label >No, soy usuario nuevo y deseo registrarme</label>
				</div>
				<div class="clear"></div>
				<div class="label-input">
					<input class="radiosAcceder" div-target="" button-type="submit"  action-form="procesos/validarUsuario.php" type="radio" name="estadoUsuario" value="Registrado" />
					<label >Si, y es:</label>
					<input type="text" name="clave"/>
				</div>
				<div class="clear"></div>
				<div class="label-input">
					<input id="check" type="checkbox" name="option1" value="recordar" />
					<label>Recordar cuenta</label>
				</div>
				<div class="clear"></div>
				<div class="form-botones">
					<input id="cForm-regist-next-welcome" class="btn-info" type="button" div-target="#cForm-registro1" value="Continuar"/>
				</div>
		</div>
<div id="registrate">
			<h1 class="title-pags">Bienvenido al registro de usuario</h1>
			<p>Por favor ingrese los datos indicados a continuación.</p>

			<div class="cForm-registro-textBoxes alinearIzquierda">
				<fieldset>
					<legend>Datos de acceso</legend>
					<label>Ingrese una clave de acceso:</label>
					<input type="password" name="contrasenia"/>
					<div class="clear"></div>
					<label>Ingrese nuevamente la clave:</label>
					<input type="password" />
				</fieldset>
				<p>La clave debe ser mayor a 6 caracteres y no ser su RUC</p>
			</div>
			<div class="cForm-registro-textBoxes alinearIzquierda">
				<fieldset>
					<legend>Datos de Jurídicos</legend>
					<label>Razón Social:</label>
					<input type="text" name="razonSoc"/>
					<div class="clear"></div>
					<label>Dirección Fiscal:</label>
					<input type="text" name="dirFiscal"/>
				</fieldset>
			</div>
			<div class="clear"></div>
			<p class="cForm-detalle">A hacer click en continuar usted está aceptando los <a href="">Terminos y Condiciones</a> 
			y está mostrando estar de acuerdo con la <a href="">Política de Privacidad</a> de La Tiendita de la Esquina.</p>
			<div class="CForm-btns-nav">
				<input class="btn-info cForm-backButton" type="button" div-target="#cForm-Inicio" value="Atrás"/>
				<input id="cForm-regist-next-usuario" class="btn-info" type="button" div-target="#cForm-registro2" value="Siguiente"/>
			</div>
		</div>
		
		<div id="cForm-registro2">
			<h1 class="title-pags">Antes de empezar a comprar</h1>
				<div class="cForm-registro-textBoxCenter">
					<fieldset>
						<legend>Datos de Contacto</legend>
						<label>Correo electrónico:</label>
						<input type="email" name="correo"/><br/>
						<label>Numero de teléfono</label>
						<input type="text" name="telefono"/>
					</fieldset>
				</div>
				<div class="clear"></div>
				<div class="label-input">
					<input id="check" type="checkbox" name="contactoViaEmail" value="" />
					<label id="cForm-labelConfirmMedia">Deseo que se contacten conmigo vía correo electrónico.</label>
				</div>
				<div class="clear"></div>
				<div class="CForm-btns-nav">
					<input class="btn-info cForm-backButton" type="button" div-target="#cForm-registro1" value="Atrás"/>
					<input id="cForm-regist-next-contacto" class="btn-info" type="submit" div-target="#cForm-Inicio" value="Listo"/>
				</div>
		</div>
-->
