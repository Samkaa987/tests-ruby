def echo(a)

	return a
	
end






def shout(b)

	return b.upcase
	
end






def repeat(c, d = 0) # en mettant (c, d=0) on indique que si d a une valeur, on le prend en compte et donc 2 arguments, si d est inexistant, on ne prend en compte que c donc 1 argument.


	if d == 0 || d == nil
		return 2.times.collect { c }.join(' ')
	else
		return d.times.collect { c }.join(' ') # on répète d fois c avec ' ' en jointure entre chaque terme
	end

end






def start_of_word (e, f)

	string = e
	return string[0,f] # string [0,f] ---> afficher les caractères d'un string du caractère 0 au caractère f
	
end






def first_word(g)

	return g.split.first # .split.first ---> afficher premier mot d'un string ; .split.last ---> afficher dernier mot d'un string.
	
end






def titleize(h)

	return h.split(" ").map.with_index{|w, i| (w!="and" && w!="the") || i==0? w.capitalize : w}.join(" ")

end