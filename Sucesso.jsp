
<%@page import="org.apache.tomcat.util.net.ApplicationBufferHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina di Prenotazione</title>
<style>
.immag1{margin-left:70px;
display: flex;}
.immag2{margin-left:70px;
display: flex;}
body{background-color:#efefef; }
.descript{text-align:center; 
margin-left:700px;
display: flex;}
</style>
</head>
<body>
<%if(session.getAttribute("nome") == null) {
	response.sendRedirect("Registrazione.jsp");
}
%>


<h1 class="welcome">Benvenuto ${nome}</h1>
 <div class= immag1>
<img src="https://www.pistenclub.de/images/termine/mugello.png" height="500">
<img src="https://www.lamartinelladifirenze.it/wp-content/uploads/2020/07/150298-CCL-mugello-xx-f1-clienti.jpg-scaled-1.jpg" height="500" > 
<img src="https://www.termometropolitico.it/newmedia/2019/05/MotoGp-Mugello-2019-data-orari-e-biglietti.-Il-programma-del-weekend.jpg" height="500" >
</div>
<h2 class=descript>Qui puoi prenotarti per un giro in pista ed assaporare il brivido della competizione. Buon Divertimento </h2>
 <div class="login">  
	<form action=Prenotazione method=Post> 
		<div >
		      <h3>Digita data: es.(09/09/09) </h3> 
		       <input type="text" name="data"><p>
		      <h3>digita ora: es.(24:00)</h3> 
		       <input type="text" name="ora"><p>
		       <h3>Digita Codice Fiscale: </h3> 
		       <input type="text" name="codiceFiscal"><p>
		       <input type=submit value=Conferma><button type="submit" formaction="Logout.jsp"> Logout</button> <p>
		       
		 </div>
	</form>
   </div>
<h3>La tua prenotazione e' per il ${data} </h3>
<h3>alle:${ora}</h3>
<h3>Con il Codice Fiscale:${codiceFiscal}</h3>
   <div class= immag2>
   <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/1b/0f/b9/autodromo-del-mugello.jpg?w=1200&h=-1&s=1" height="300">
      <img src="https://racing-school-europe.com/uploads/trackinfo/mugello.jpg" height="200">
    <img src="https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1795x986:1797x984)/origin-imgresizer.eurosport.com/2020/09/13/2885998-59427968-2560-1440.jpg" height="300">
     <img src="https://as01.epimg.net/motor/imagenes/2020/06/29/formula_1/1593418543_428820_1594372701_noticia_normal_recorte1.jpg" height="300">
     <img src="https://www.trueriders.it/wp-content/uploads/2021/05/motogp-mugello-orari_1112139038.jpg" height="300">
     </div>


</body>
</html>
