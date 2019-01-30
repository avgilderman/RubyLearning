#обрабатывает загаданное слово.
def get_letters
	#брать слово из параметров запуска программы, разделить по буквам
	#проверить не ввели ли пустоту. Исправление кодировки
	slovo = ARGV[0]
	if (slovo == nil || slovo == "")
		abort "Для игры введите загаданное слово в качестве аргумента при запуске программы"
		return slovo.encode("UTF-8").split("")
end

#форматированная буква, которую ввёл пользователь	
def get_user_input
	letter = ""
	while letter == "" do
		letter = STDN.gets.encode("UTF-8").chomp
	end
	return letter		
end

def check_result(user_input, letters, good_letters, bad_letters)
	#возвращаемое значение:	1, если буква, которую ввёл игрок есть в слове и игрок отгадал всё слово, -1, если буквы, которую ввёл игрок, нет в загаданном слове, 0 во всех других случаях
	if good_letters.include?(user_input) || bad_letters.include?(user_input)
		return 0
	end
	if letters.include?(user_input)
		good_letters << user_input
	if good_letters.uniq.size == letters.uniq.size
		return 1
	else
		return 0
	end
else
	bad_letters << user_input
	return -1
end
end

