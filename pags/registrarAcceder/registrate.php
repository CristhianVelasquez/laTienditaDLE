<div class="cForm-Acceder">
<div id="registroB">
	<h1 class="title-form" >Bienvenido al registro de usuario</h1>
	<p>Por favor ingrese los datos indicados a continuación.</p>
	<form action="" method="post">
		<fieldset>
			<legend>Datos de acceso</legend>
			<label>Ingrese una clave de acceso:</label>
			<div class="div-input-registro">
				<input id="contrasenia1" class="alinearIzquierda inputRegistro" type="password" name="contrasenia1"/><div id="msgErrorPassword1" class="alinearIzquierda text-error mensajeErrorRegistro"></div>
					<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<label>Ingrese nuevamente la clave:</label>
			<div class="div-input-registro">
				<input id="contrasenia2" class="alinearIzquierda inputRegistro" type="password" name="contrasenia2"/>
			</div>
			<div class="clear"></div>
		</fieldset>

		
		<fieldset>
			<legend>Datos de Jurídicos</legend>
			<label>Razón Social:</label>
			<div class="div-input-registro">
				<input id="registro-empresa-razonSocial" class="alinearIzquierda inputRegistro" type="text" name="razonSoc"/><div id="msgErrorRazonSocial"class="alinearIzquierda text-error mensajeErrorRegistro"></div>
			</div>
			<div class="clear"></div>
			<label>Ruc :</label>
			<div class="div-input-registro">
				<input id="registro-empresa-ruc" class="alinearIzquierda inputRegistro" type="text" maxlength="11" name="ruc"/><div id="msgErrorRuc" class="alinearIzquierda text-error mensajeErrorRegistro"></div> 
			</div>
			<div class="clear"></div>
			<label>Dirección Fiscal:</label>
			<div class="div-input-registro">
				<input id="registro-empresa-direccionFiscal" class="alinearIzquierda inputRegistro" type="text" name="dirFiscal"/><div id="msgErrorDireccionFiscal" class="alinearIzquierda text-error mensajeErrorRegistro"></div>
			</div>
			<div class="clear"></div>
		</fieldset>
		
		<fieldset>
			<legend>Datos de Contacto</legend>
			<label>Correo electrónico:</label>
			<div class="div-input-registro">
				<input id="registro-empresa-correo" class="alinearIzquierda inputRegistro" type="email" name="correo"/><div id="msgErrorCorreo" class="alinearIzquierda text-error mensajeErrorRegistro"></div>
			</div>
			<div class="clear"></div>
			<label>Numero de teléfono</label>
			<div class="div-input-registro">
				<input id="registro-empresa-telefono"  class="alinearIzquierda inputRegistro" maxlength="10" type="text" name="telefono"/><div id="msgErrorTelefono" class="alinearIzquierda text-error mensajeErrorRegistro"></div>
			</div>
			<div class="clear"></div>
		</fieldset>

		<div class="clear"></div>
		
		<div>
			<input  id="checkbox-registro" type="checkbox" name="contactoViaEmail" value="" />
			<label id="cForm-labelConfirmMedia">Deseo que se contacten conmigo vía correo electrónico.</label>
		</div>
		
		<div class="clear"></div>
		
		<p id="aceptarCondiciones">	Al hacer clic en continuar usted está aceptando los </p>
		
		<p><span><a href="index.php?pag=infoLegal">Terminos y Condiciones</a></span> y está mostrando estar de acuerdo con la 
		<a href="">Política de Privacidad</a> de La Tiendita de la Esquina.</p>
		
		<div id="btns-registroB">
			<input id="btnRegistrarEmpresa" type="submit" value="Registrarme"/>
			<div id="confirmation" class="text-success"></div>
		</div>
		<div id="mensaje-error-registro">
		</div>
	</form>
</div>
</div>