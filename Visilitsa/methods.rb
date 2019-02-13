#брать слово из параметров запуска программы, разделить по буквам в массив
#проверить не ввели ли пустоту. 
#Исправление кодировки
def get_letters
	slovo = ARGV[0]
	if (slovo == nil || slovo == "")
		abort "Для игры введите загаданное слово в качестве аргумента при запуске программы"
	end
		return slovo.encode("UTF-8").split("")
end

#форматируем букву, которую ввёл пользователь	
def get_user_input
	letter = ""
	while letter == "" do
		letter = STDN.gets.encode("UTF-8").chomp
	end
	return letter		
end

# 1 отгадал всё слово, 
# -1 буквы нет в слове 
# 0 Угадал/повтор
def check_result(user_input, letters, good_letters, bad_letters)
	#если пользователь вводит букву, которую уже вводил
	if good_letters.include?(user_input) || bad_letters.include?(user_input)
		return 0
	end
		
		#введённая буква есть в слове
	if letters.include?(user_input)
		good_letters << user_input	
		
			#если введеная буква есть в слове, и отгадано всё слово
		if good_letters.uniq.size == letters.uniq.size
			return 1
		else
			#если буква есть в слове, но всё слово еще не отгадано
			return 0
		end
	else
	#введеной буквы нет в слове
	bad_letters << user_input
	return -1
	end
end

#отображения промежуточного статуса игры 
#вывод результата в конце игры (проигрыш или выигрыш).
def print_status(letters, good_letters, bad_letters, errors)
	#отобразить слово как в поле чудес
	puts "/nСлово: " + get_word_for_print(letters, good_letters) 
	#отобразить количество ошибок и буквы, которых нет в слове
	puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"
	if errors >= 7
		puts "Вы проиграли"
	else
		if letters.uniq.size == good_letters.uniq.size
			puts "Поздравляем, вы выиграли!"
		else
			puts "У вас осталось попыток: " + (7 - errors).to_s
		end
	end
end

#вывод загаданного слова как в «Поле чудес»
def get_word_for_print(letters, good_letters)
	results = ""

	for item in letters do
		if good_letters.include?(item)
			result += item + " "
		else
			result += "__ "
		end
	end
	return results
end
