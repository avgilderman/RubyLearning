def merhold(mass, dlinna)
	i = 0
	m = []

	if dlinna > mass.size
		return "Вы слишком много колбасы желаете!"
	else

		
	while i < dlinna do
		m << mass[i]
		i += 1		
	end
	return m.to_s
end
end
massiv = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Вот такая палка колбасы у нас есть " + massiv.to_s
puts "Колбаса длинной в " + massiv.size.to_s
skolko = gets.chomp.to_i

puts "Вот ваша колбаса из #{skolko} кусочков: #{merhold(massiv, skolko)}" 