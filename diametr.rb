puts "Введите радиус полового члена"
radius = gets.chomp.to_f
puts "Введите длинну половго члена (измерить линейкой)"
dlinna = gets.chomp.to_f
def womanher(one, two)
	if (one == nil || !one.is_a?(Numeric))
    one = 0
  end
  if (two == nil || !two.is_a?(Numeric))
    two = 0
  end
  diametr = one * 2
  ploshad = diametr * two
  objom = ploshad * 3.14
  return objom
end
puts "Площадь объёма полового члена #{womanher(radius, dlinna).to_s}"