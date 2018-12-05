nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"];print nombres
name_l = nombres.select {|e| e.length > 5}; print "Ej 1. #{name_l}"
name_m = nombres.select {|e| e.downcase! }; print "Ej 2. #{name_m}"
name_p = nombres.select {|e| e[0] == 'p'}; print "Ej 3. #{name_p}"
name_w = nombres.select {|e| e.gsub!(/[aeiou]/, '') }; print "Ej 4. #{name_w}"
