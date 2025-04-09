<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro de nuevos clientes</title>
</head>
<body>
	<h3>Registro de nuevos clientes</h3>
    <form action="respuesta.jsp" method="post">
    <table border="1">
    	<tr><td>Nombre:</td><td><input type="text" name="txtNombre" id="txtNombre"/><br/></td></tr>
    	<tr><td>Cédula:</td><td><input type="text" name="txtCedula" maxlength="10" /><br/></td></tr>
    	<tr><td>Estado Civil:</td>
    		<td><select name="cmbECivil" id="cmbECivil">
    			<option value="Soltero">Soltero</option>
    			<option value="Casado">Casado</option>
    			<option value="Divorciado">Divorciado</option>
    			<option value="Viudo">Viudo</option>
    		</select></td></tr>
    	<tr><td>Lugar Residencia:</td><td>
    			<input type="radio" name="rdResidencia" value="Sur"/>Sur
				<input type="radio" name="rdResidencia" value="Norte"/>Norte
				<input type="radio" name="rdResidencia" value="Centro"/>Centro
    	</td></tr>
    	<tr><td>Foto:</td><td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" /></td></tr>
    	<tr><td><input type="submit" name="btnEnviar" id="btnEnviar" value="Enviar Registro"/></td>
    	<td><input type="reset" name="btnBorrar" id="btnBorrar" value="Borrar Registro"></td></tr>
    </table>
	</form>
</body>
</html>