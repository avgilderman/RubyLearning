def stroka(stroka, number)
	summa = ""
	count = 0
	while count < number do
		summa += stroka
		count += 1
	end
	puts summa
end
puts "Какую строчку склеиваем?"
peremen1 = gets.encode("UTF-8").chomp
puts "Сколько Вам строк?"
peremen2 = gets.chomp.to_i
puts "Вот Ваш результат: "
stroka(peremen1, peremen2)