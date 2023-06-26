<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina di Logout</title>
<style>
	.immag1{margin-left:70px;
display: flex;}
.immag2{margin-left:70px;
display: flex;}
body{background-color:#efefef; }
.descript{text-align:center; 

display: flex;}
</style>
</head>
<body>
	<% session.removeAttribute("nome");
	   session.invalidate();
	%>
	<div class= immag1>
<img src="https://www.pistenclub.de/images/termine/mugello.png" height="500">
<img src="https://www.lamartinelladifirenze.it/wp-content/uploads/2020/07/150298-CCL-mugello-xx-f1-clienti.jpg-scaled-1.jpg" height="500" > 
<img src="https://www.termometropolitico.it/newmedia/2019/05/MotoGp-Mugello-2019-data-orari-e-biglietti.-Il-programma-del-weekend.jpg" height="500" >
</div>
   <div>
   <form>
   <h2> Hai effettuato il logout</h2><p>
   <div class=descript>
   <h2 >La ringraziamo per aver prenotato il suo giro al Mugello Circuit.</h2><p> 
   <h2>Per il pagamento si rivolga  box informazioni  del circuto con il suo Codice Fiscale inserito nel momento della prenotazione. </h2>
     <br><h2>Buona giornata</h2>  
     </div>
       <div>
	 	<button type="submit" formaction="Login.jsp"> Login</button> 
	   </div>
	   </form>
   </div>
   <div class= immag2>
   <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/1b/0f/b9/autodromo-del-mugello.jpg?w=1200&h=-1&s=1" height="300">
      <img src="https://racing-school-europe.com/uploads/trackinfo/mugello.jpg" height="200">
    <img src="https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1795x986:1797x984)/origin-imgresizer.eurosport.com/2020/09/13/2885998-59427968-2560-1440.jpg" height="300">
     <img src="https://as01.epimg.net/motor/imagenes/2020/06/29/formula_1/1593418543_428820_1594372701_noticia_normal_recorte1.jpg" height="300">
     <img src="https://www.trueriders.it/wp-content/uploads/2021/05/motogp-mugello-orari_1112139038.jpg" height="300">
     </div>
</body>
</html>
