Feature: Construir tablero de juego

	Como jugador de ahorcado
	quiero ver el tablero de juego
	para iniciar la partida

	Scenario: mostrar tablero del juego
	Given inicio el juego
	When paso la pantalla de bienvenida
	Then debo ver el tablero del juego

	Scenario: mostrar poste de ahorcado
	Given inicio el juego
	When paso la pantalla de bienvenida
	Then debo ver el poste del ahorcado "i0.png"

	Scenario: mostrar espacios de la palabra
	Given inicio el juego
	When paso la pantalla de bienvenida
	Then debo ver los espacios de la palabra CARRO "_____"

	Scenario: mostrar el boton adivinar
	Given inicio el juego
	And paso la pantalla de bienvenida
	Then debo ver el boton "Adivinar"
	And debo ver el campo "letra" para digitar

	Scenario: Ver nombre del jugador
	Given inicio la aplicacion	
	And escribo el nombre "Cristian Ruby" en el campo "nombre"
	And presiono el boton "Jugar"
	Then debo ver el titulo el nombre "Bienvenido al Juego Ahorcado Cristian Ruby"

	Scenario: Primer acierto del jugador
	Given inicio el juego
	And ingresa la letra "T" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver la palabra adivinada "T____"

	Scenario: Segundo acierto del jugador
	Given juego ya esta iniciado
	And ingresa la letra "R" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver la palabra adivinada "T__R_"

	Scenario: Tercer acierto del jugador
	Given juego ya esta iniciado
	And ingresa la letra "I" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver la palabra adivinada "TI_R_"
	
	Scenario: Cuarto acierto del jugador
	Given juego ya esta iniciado
	And ingresa la letra "G" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver la palabra adivinada "TIGR_"

	Scenario: Quinto acierto del jugador
	Given juego ya esta iniciado
	And ingresa la letra "E" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver la palabra adivinada "TIGRE"
	And debo ver el mensaje "Ha ganado!"

	Scenario: Primer error del jugador
	Given inicio el juego
	And ingresa la letra "Z" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver siguiente parte del ahorcado por fallo "1"

	Scenario: Segundo error del jugador
	Given juego ya esta iniciado
	And ingresa la letra "Y" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver siguiente parte del ahorcado por fallo "2"

	Scenario: Tercer error del jugador
	Given juego ya esta iniciado
	And ingresa la letra "X" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver siguiente parte del ahorcado por fallo "3"

	Scenario: Cuarto error del jugador
	Given juego ya esta iniciado
	And ingresa la letra "W" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver siguiente parte del ahorcado por fallo "4"

	Scenario: Quinto error del jugador
	Given juego ya esta iniciado
	And ingresa la letra "S" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver siguiente parte del ahorcado por fallo "5"

	Scenario: Sexto error del jugador
	Given juego ya esta iniciado
	And ingresa la letra "S" en el campo "letra"
	And intento adivinar la palabra presionando "Adivinar"
	Then debo ver siguiente parte del ahorcado por fallo "6"
	And debo ver el mensaje "Ha perdido!"
	And debo ver la palabra correcta "TIGRE"

