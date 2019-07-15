def add(num1, num2)
	return num1 + num2
	
end








def subtract(num3, num4)
	return num3 - num4
	
end








def sum(array)
	summ = 0
	array.each do |i|
		summ += i
		
	end
	return summ
	
end






def multiply(num5, num6)
	return num5 * num6
	
end






def power(num7, num8)
	return num7 ** num8
	
end






def factorial(a)
	nb = 1
	1.upto(a) do |i|
		nb *= i
	end
	return nb
end