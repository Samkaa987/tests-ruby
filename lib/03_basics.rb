def who_is_bigger(a, b, c)

	if a == nil || b == nil || c == nil
		return "nil detected"

	elsif a > b && a > c
		return "a is bigger"

	elsif b > a && b > c
		return "b is bigger"

	elsif c > a && c > b
		return "c is bigger"
	end
	
end






def reverse_upcase_noLTA(d)

	reverse = d.reverse
	upcase = reverse.upcase
	remove = upcase.delete "L"
	remove1 = remove.delete "T"
	remove2 = remove1.delete "A"
	return remove2
	
end






def array_42(array)

	return array.include? (42)  # array.include? (42) ---> true or false.      /      array.any?  { |n| n = 42 } ---> only true.
	
end






def magic_array(array)

	flat = array.flatten # .flatten ---> enlever les arrays dans le array i.e : [a, b, [c, d]] -> [a, b, c, d]
	sort1 = flat.sort # .sort ---> trier le array
	multi = sort1.map {|n| n * 2 } # .map {|n| n * 2 } ---> multiplier chaque éléments du array par 2       /       différence entre .each et .map ---> each traite les valeurs mais ne les réécris pas, map va les traiter et les réécrire.
	remo1 = multi.delete_if {|e| e % 3 == 0 } # .delete_if ---> effacer sous condition      /      e % 3 == 0 ---> e est un multiple de 3
	remo2 = remo1.uniq # .uniq ---> efface tous les éléments dupliqués dans un array
	sort2 = remo2.sort
	return sort2

end