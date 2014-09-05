require_relative 'seleccionador'

class Tablero

	def initialize(categoria = "Test",nivel = "Basico",idioma = "Ninguno")
		@n_falla = 0
		
		seleccionador = SeleccionadorPalabras.new(categoria,nivel,idioma)
		@palabra_seleccionada = seleccionador.seleccionar_palabra(Random.new)

		@palabra = ''
		
		@palabra_seleccionada.length.times{@palabra += '_'}
	end

	def adivinar_letra(letra)
		if @palabra_seleccionada[letra] != nil
			reemplazar_letra(letra)
		else
			@n_falla += 1
		end
	end

	def reemplazar_letra(letra)
		index = 0
		@palabra_seleccionada.each_char do |c|
			if letra == c
				@palabra[index] = c
			end
			index = index + 1
		end
	end

	def palabra
		@palabra
	end
	
	def numero_fallas
		@n_falla
	end 	

	def ha_ganado
		@palabra == @palabra_seleccionada
	end

	def ha_perdido
		@n_falla >= 6
	end

	def palabra_seleccionada
		@palabra_seleccionada
	end
end

class FakeRandom
	def rand(max)
		0
	end
end
