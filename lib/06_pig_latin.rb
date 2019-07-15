def translate(str)
	
	str.split.map { |x| # .split = on convertit le string en array    /     .map = transforme toutes les données du tableau 
	

		if (x[0] =~ /[aeiouy]/) #SI la 1ere lettre (x[0]) match avec "aeiouy" donc voyelle <---> =~ veut dire que la variable match avec /[...]/  
		then x + "ay" 			#   on met entre / / pour prendre chaque valeur a e i o u y et non pas le mot aeiouy.
								# ALORS on écrit le mot en entier et on ajoute "ay" à la fin
	

		
		
		elsif (x[0] =~ /[[^aeiouy]]/ && x[1] =~ /[[aeiouy]]/ && x[0..1] != "qu") # MAIS SI la 1ere lettre (x[0]) match avec toutes les lettres sauf "aeiouy" (donc si la première lettre est une consonne) ---> dans /[[^aeiouy]]/ le ^ sert à déterminer qu'on doit matcher à tout sauf le contenu entre crochet
			then x[1..x.length] + x[0] + "ay"									 # ET que la 2eme lettre x[1] match avec n'importe laquelle des voyelles
																				 # ET que les les 1ere et 2eme lettres x[0..1] sont différentes de "qu"
																				 # ALORS on commence le mot à la 2e lettre x[1] + la consonne du début x[0] + on rajoute "ay" à la fin


		

		elsif (x[0..1] =~ /[[^aeiouy]]/ && x[2] =~ /[[aeiouy]]/ && x[1..2] != "qu") # MAIS SI les 2 premières lettres x[0..1] match avec tout sauf les voyelles (donc les consonnes)
			then x[2..x.length] + x[0..1] + "ay"									# ET que la 3e lettre x[2] match avec n'importe laquelle des voyelles
																					# ET que les 2e et 3e lettres x[1..2] sont différentes de 'qu'
																					# ALORS on écrit le mot en entier en le commençant cependant à la 3e lettre + on rajoute les 1ere et 2e lettre ensuite + on ajoute ay à la fin
		
		
		


		elsif (x[0..2] =~ /[[^aeiouy]]/) 		   # MAIS SI les 1ere 2e et 3e lettres match avec tout sauf les voyelles (donc les consonnes)
			then x[3..x.length] + x[0..2] + "ay"   # ALORS on écrit le mot en entier à partir de la 4ème lettre + on rajoute les 3 premières lettres par la suite + on rajoute ay à la fin
		
		
		


		end}.join(' ') # Dans ce array, on espace toutes les valeurs par " ".
end