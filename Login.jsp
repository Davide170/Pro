<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.descript{text-align:center; 
display: flex;}
.immag1{margin-left:70px;
display: flex;}
.immag2{margin-left:70px;
display: flex;}
body{background-color:#efefef; }
.descript{color:#636363}
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

   <h2> Benvenuto al Circuito del Mugello</h2><p>
   <div class= immag1>
<img src="https://www.pistenclub.de/images/termine/mugello.png" height="500">
<img src="https://www.lamartinelladifirenze.it/wp-content/uploads/2020/07/150298-CCL-mugello-xx-f1-clienti.jpg-scaled-1.jpg" height="500" > 
<img src="https://www.termometropolitico.it/newmedia/2019/05/MotoGp-Mugello-2019-data-orari-e-biglietti.-Il-programma-del-weekend.jpg" height="500" >
</div>
<h3 class=descript>L'Autodromo Internazionale del Mugello, progettato e realizzato con tutti gli accorgimenti scaturiti dall'esperienza agonistica, garantisce massima sicurezza sia per i piloti che per il pubblico. 
Ampie vie di fuga tra i punti impegnativi del tracciato: una strada di servizio per i mezzi di soccorso che possono liberamente muoversi per tutti e 5.245 metri del tracciato. 
Progettato negli anni '70 e poi profondamente rinnovato, attualmente tra i moderni e sicuri del panorama internazionale non ha subito alcun cambiamento nel tracciato, che rimane inalterato. 
E' sede abituale di test e prove di F.1, delle case leader nel Mondiale MotoGP e del Mondiale Superbike, di  case automobilistiche e motociclistiche nazionali ed internazionali. 
Ha ospitato la Formula 5.000 (che ha tenuto a battesimo l'impianto il 23 giugno 1974), la Formula 3.000, la Formula Due, il Fia-Gt e, unico impianto italiano, l'ITC: per quanto concerne le due ruote ha sede del GP d'Italia.  
La pista si distende per oltre cinquemila metri nei boschi e nel verde delle colline toscane. Tutte le strutture di supporto sono state realizzate potendo contare su tecnologie costruttive all'avanguardia. 
Nella palazzina direzionale sono stati creati locali nuovi e polifunzionali, attrezzati di tutti i servizi.</h3>
   <div class="login">  
	<form action=LoginServlet method=Post> 
		<div>
		<h3>Per prenotare la tua corsa accedi</h3>
		      <h2>Inserisci nome: </h2> 
		       <input type="text" name="nome"><p>
		      <h2> Inserisci password: </h2> 
		       <input type=password name="password"><p>
		       <input type=submit value=Login> <input type=reset><p>
		        Non Sei ancora registrato?<p><button type="submit" formaction=Registrazione.jsp>Registrati</button>
		 </div>
	</form>
   </div>
   <div class= immag2>
   <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/1b/0f/b9/autodromo-del-mugello.jpg?w=1200&h=-1&s=1" height="300">
      <img src="https://racing-school-europe.com/uploads/trackinfo/mugello.jpg" height="200">
    <div class= immag2>
   <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/1b/0f/b9/autodromo-del-mugello.jpg?w=1200&h=-1&s=1" height="300">
      <img src="https://racing-school-europe.com/uploads/trackinfo/mugello.jpg" height="200">
    <img src="https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1795x986:1797x984)/origin-imgresizer.eurosport.com/2020/09/13/2885998-59427968-2560-1440.jpg" height="300">
     <img src="https://as01.epimg.net/motor/imagenes/2020/06/29/formula_1/1593418543_428820_1594372701_noticia_normal_recorte1.jpg" height="300">
     <img src="https://www.trueriders.it/wp-content/uploads/2021/05/motogp-mugello-orari_1112139038.jpg" height="300">
     </div><img src="https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1795x986:1797x984)/origin-imgresizer.eurosport.com/2020/09/13/2885998-59427968-2560-1440.jpg" height="300">
     <img src="https://as01.epimg.net/motor/imagenes/2020/06/29/formula_1/1593418543_428820_1594372701_noticia_normal_recorte1.jpg" height="300">
     <img src="https://www.trueriders.it/wp-content/uploads/2021/05/motogp-mugello-orari_1112139038.jpg" height="300">
     </div>
</body>
</html>
