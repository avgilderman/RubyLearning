puts "Сколько Вам звёзд на погоны?"
def zvezdy(parametr)
	if (parametr == nil || !parametr.is_a?(Numeric))
    parametr = 11
  	end
 	peremen = ""
 	while peremen.length < parametr do
 		peremen += "*"
 	end
 		return peremen
end
skolko = gets.chomp.to_i
puts "#{zvezdy(skolko)}"
