<?php
 $musica = simplexml_load_file("http://cursxml.tk/musica/musica.xml"); 
?>
<!DOCTYPE  HTML>
<html>
	<head>
		<meta charset="utf-8">
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
		<style>
			#playlist , #playlist img , #playlist audio{width: 300px; }
			#playlist ul {
				list-style : none; 
				background-color: black; 
				color: white; 
				padding-top: 10px; 
				padding-bottom: 10px; }
			#playlist ul li {cursor : pointer; }
			.active { color: orange; }

		</style>
		<script>
			$(function(){
				$("#lista li:first-child").addClass("active"); 

				$("#lista li").on("click",function(){
				$("#lista li").removeClass("active"); 
				$("#audio").attr("src",$(this).attr("audio")); 
				document.getElementById("audio").play(); 
				$("#portada").attr("src",$(this).attr("portada")); 
				$(this).addClass("active"); 
			}); 
			}); 


		</script>
	</head>
	<body>
		<h1> Musica </h1>
<!-- Iniciem la priemra canço per defecte -->
		<div id="playlist">

		<img id="portada" src="<?php echo $musica->cancion[0]->portada ?>"> 	
		<audio controls id="audio" >
		<source id="source" src="<?php echo $musica->cancion[0]->audio ?>" type = "audio/mpeg">
		El teu navegador no soporta l'àudio 
		</audio>	

		<ul id="lista">
			<?php for($x=0; $x < count($musica->cancion); $x++): ?>
		<li audio="<?php echo $musica->cancion[$x]->audio ?>"  portada = "<?php echo $musica->cancion[$x]->portada ?>"> 
			<?php echo $musica->cancion[$x]->titulo . " - " . $musica->cancion[$x]->artista ?>
		</li> 
		<?php endfor ?>
		</ul>	
		</div>

	</body>
</html>			