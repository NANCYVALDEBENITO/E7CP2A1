nombre = []
edad = []
comuna = []
genero = []
personas = { Nombre: nombre , Edad: edad , Comuna: comuna , Genero: genero }
require 'yaml'
loop do
	puts 'Seleccione la opción que prefiere ingresando el número según corresponda:'
	puts ' 1 Ingresar a persona '
	puts ' 2 Editar a persona '
	puts ' 3 Eliminar a persona'
	puts ' 4 Cantidad de personas'
	puts ' 5 Comunas donde viven'
	puts ' 6 Personas entre 20 y 25'
	puts ' 7 Suma de las edades'
	puts ' 8 Promedio de las edades del grupo'
	puts ' 9 Lista de personas por género'
	puts ' 10 Salir'
	opcion = gets.chomp

	if opcion == 1.to_s 

		print 'Nombre: '
		nombre_1 = gets.chomp
		nombre.push(nombre_1)
		print nombre
		personas[:Nombre]= nombre

		print 'Edad: '
		edad_1 = gets.chomp
		edad.push(edad_1)
		personas[:Edad] = edad

		print 'Comuna: '
		comuna_1 = gets.chomp
		comuna.push(comuna_1)
		personas[:Comuna] = comuna

		print 'Género: '
		genero_1 = gets.chomp
		genero.push(genero_1)
		personas[:Genero] = genero

	elsif opcion == 2.to_s

		puts '¿que datos desea modificar?'
		buscar = gets.chomp
		if buscar == 'Nombre'
			puts 'Cual nombre?'
			nombre_buscado = gets.chomp
			nombre.select{|n| puts 'nuevo nombre' if n == nombre_buscado }
		else
			'NO se encuentra'
		end
		

	elsif opcion == 3.to_s

		puts ''
	
	elsif opcion == 4.to_s
	
		puts ''
	
	elsif opcion == 5.to_s
	
		puts ''
	
	elsif opcion == 6.to_s
	
		puts ''
	
	elsif opcion == 7.to_s
	
		puts ''
	
	elsif opcion == 8.to_s
	
		puts ''
	
	elsif opcion == 9.to_s
	
		puts ''
	
	elsif opcion == 10.to_s

		break

	else

		puts 'La opción no es válida'
		
	end
	
	#opciones = ['Nombre', 'Edad', 'Comuna', 'Género']
	# personas = Hash[opciones.zip([nombre,edad,comuna,genero].to_a)]
	print personas
 	File.write('ejemplo.yml', personas.to_yaml)
end