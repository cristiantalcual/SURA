Feature: Inicio del juego

	Como jugador de 'Ahorcado'
	necesito visualizar el titulo 'Bienvenido al Juego Ahorcado'
	para saber que estoy en la aplicacion correcta

	Scenario: Mensaje de bienvenida
	Given inicio la aplicacion
	Then debo ver el titulo "Bienvenido al Juego Ahorcado"

	Scenario: Lista de Categorias
	Given inicio la aplicacion
	Then debo ver la categoria "Animales"

	Scenario: Ver campo nombre
	Given inicio la aplicacion
	Then debo ver el campo "nombre" en la pantalla

	Scenario: Lista de Niveles
	Given inicio la aplicacion
	Then debo ver el nivel "Basico"

	Scenario: Lista de Idiomas
	Given inicio la aplicacion
	Then debo ver el Idioma "Espaniol"
