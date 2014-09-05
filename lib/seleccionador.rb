class SeleccionadorPalabras
	def initialize(categoria = "Objetos", nivel = "Ninguno", idioma = "Ninguno")
		if categoria == "Test"
			@palabras = ["TIGRE"]
		elsif idioma == "Espaniol"
			if categoria == "Animales"
				if nivel == "Basico"
					@palabras = ["VACA","MONO","GATO"]
				elsif nivel == "Intermedio"
					@palabras = ["TIGRE","PERRO","ELEFANTE"]
				elsif nivel == "Avanzado"
					@palabras = ["GORILA","HIPOPOTAMO","IGUANA"]
				end
			elsif categoria == "Deportes"
				if nivel == "Basico"
					@palabras = ["FUTBOL","LUCHA","TENIS"]
				elsif nivel == "Intermedio"
					@palabras = ["VOLEIBOL","BASQUET","NATACION"]
				elsif nivel == "Avanzado"
					@palabras = ["WINDSURF","WATERPOLO","EQUITACION"]
				end
			end
		elsif idioma == "Ingles"
			if categoria == "Animales"
				if nivel == "Basico"
					@palabras = ["COW","MONKEY","CAT"]
				elsif nivel == "Intermedio"
					@palabras = ["TIGER","DOG","ELEPHANT"]
				elsif nivel == "Avanzado"
					@palabras = ["GORILLA","HIPPOPOTAMUS","LIZARD"]
				end
			elsif categoria == "Deportes"
				if nivel == "Basico"
					@palabras = ["SOCCER","WRESTLING","TENNIS"]
				elsif nivel == "Intermedio"
					@palabras = ["VOLLEYBALL","BASKETBALL","SWIMMING"]
				elsif nivel == "Avanzado"
					@palabras = ["WINDSURF","WATERPOLO","HORSERIDING"]
				end
			end
		else
			@palabras = ["CARRO", "CASA", "AMARILLO"]
		end
	end

	def seleccionar_palabra(random)
		@palabras[random.rand(@palabras.length)]
	end
end
