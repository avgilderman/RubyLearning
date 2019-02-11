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

def check_result(user_input, letters, good_letters, bad_letters)
	#user_input — введённая пользователем буква, 
	#letters — массив букв загаданного слова, 
	#good_letters — массив отгаданных букв, 
	#bad_letters — массив букв, которые пользователь вводил, но которых нет в слове
	#возвращаемое значение:	
	#1, если игрок отгадал всё слово, 
	#-1, если буквы, которую ввёл игрок, нет в загаданном слове, 
	#0 если угадал букву, но не слово, если пользователь вводит букву, которую уже вводил.)
	
	#если пользователь вводит букву, которую уже вводил
	if good_letters.include?(user_input) || bad_letters.include?(user_input)
		return 0
	end
	#есть ли введённая буква в загаданном слове.
	if letters.include?(user_input)
		#отправить правильную букву в массив угаданных
		good_letters << user_input
	#если отгадал всё слово
	if good_letters.uniq.size == letters.uniq.size
		return 1
	else
		#если не отгадал
		return 0
	end
else
	bad_letters << user_input
	return -1
end
end

#для отображения промежуточного статуса игры 
#для вывода результата в конце игры (проигрыш или выигрыш).
def print_status(user_input, letters, good_letters, bad_letters)










































