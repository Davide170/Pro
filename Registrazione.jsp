<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuova Registrazione</title>
<style>
	
	}
</style>
</head>
<body>
    <h1 class="welcome">Benvenuto nella registrazione</h1>
    <div class="registrazione">
	<form action=Registra method=Post>
		 <div class="border">
		       <h2>Inserisci username: </h2>
		       <input type="text" name="nome"><p>
		       <h2>Inserisci password: </h2>
		       <input type=password name="password"><p>
		       <h2>Inserisci nuovamente la password:</h2>
		       <input type=password name="Ppassword"><p>
		       <input type=submit value=Registrati> <input type=reset>
		       <button type="submit" formaction="Logout.jsp"> Logout</button> 
		 </div>
	</form>
	</div>
</body>
</html>
