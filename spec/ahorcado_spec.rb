require_relative 'spec_helper'
require_relative '../lib/tablero'
require_relative '../lib/seleccionador'

describe SeleccionadorPalabras do
	it "Deberia traer la palabra seleccionada 'CARRO' cuando inicio el juego" do
		seleccionador = SeleccionadorPalabras.new
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'CARRO'
	end

	it "Deberia ver la palabra seleccionada 'TIGRE' cuando seleccione la categoria 'ANIMALES' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Test")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'TIGRE'
	end

	it "Deberia ver la palabra seleccionada 'VACA' cuando seleccione la categoria 'ANIMALES' y el nivel 'BASICO' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Animales","Basico","Espaniol")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'VACA'
	end

	it "Deberia ver la palabra seleccionada 'VACA' cuando seleccione la categoria 'ANIMALES', el nivel 'BASICO' y el idioma 'ESPANIOL' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Animales","Basico","Espaniol")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'VACA'
	end

	it "Deberia ver la palabra seleccionada 'TIGRE' cuando seleccione la categoria 'ANIMALES', el nivel 'Intermedio' y el idioma 'ESPANIOL' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Animales","Intermedio","Espaniol")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'TIGRE'
	end

	it "Deberia ver la palabra seleccionada 'GORILA' cuando seleccione la categoria 'ANIMALES', el nivel 'Avanzado' y el idioma 'ESPANIOL' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Animales","Avanzado","Espaniol")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'GORILA'
	end

	it "Deberia ver la palabra seleccionada 'FUTBOL' cuando seleccione la categoria 'Deportes', el nivel 'BASICO' y el idioma 'ESPANIOL' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Deportes","Basico","Espaniol")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'FUTBOL'
	end

	it "Deberia ver la palabra seleccionada 'VOLEIBOL' cuando seleccione la categoria 'Deportes', el nivel 'Intermedio' y el idioma 'ESPANIOL' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Deportes","Intermedio","Espaniol")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'VOLEIBOL'
	end

	it "Deberia ver la palabra seleccionada 'WINDSURF' cuando seleccione la categoria 'Deportes', el nivel 'Avanzado' y el idioma 'ESPANIOL' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Deportes","Avanzado","Espaniol")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'WINDSURF'
	end

#Coverage Denis

	it "Deberia ver la palabra seleccionada 'COW' cuando seleccione la categoria 'ANIMALES', el nivel 'BASICO' y el idioma 'INGLES' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Animales","Basico","Ingles")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'COW'
	end	

	it "Deberia ver la palabra seleccionada 'TIGER' cuando seleccione la categoria 'ANIMALES', el nivel 'INTERMEDIO' y el idioma 'INGLES' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Animales","Intermedio","Ingles")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'TIGER'
	end	

	it "Deberia ver la palabra seleccionada 'GORILLA' cuando seleccione la categoria 'ANIMALES', el nivel 'AVANZADO' y el idioma 'INGLES' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Animales","Avanzado","Ingles")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'GORILLA'
	end	

	it "Deberia ver la palabra seleccionada 'SOCCER' cuando seleccione la categoria 'DEPORTES', el nivel 'BASICO' y el idioma 'INGLES' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Deportes","Basico","Ingles")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'SOCCER'
	end	

	it "Deberia ver la palabra seleccionada 'VOLLEYBALL' cuando seleccione la categoria 'DEPORTES', el nivel 'INTERMEDIO' y el idioma 'INGLES' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Deportes","Intermedio","Ingles")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'VOLLEYBALL'
	end	

	it "Deberia ver la palabra seleccionada 'WINDSURF' cuando seleccione la categoria 'DEPORTES', el nivel 'AVANZADO' y el idioma 'INGLES' e inicie el juego " do
		seleccionador = SeleccionadorPalabras.new("Deportes","Avanzado","Ingles")
		seleccionador.seleccionar_palabra(FakeRandom.new).should == 'WINDSURF'
	end	

end

describe Tablero do
	it "Deberia ver la palabra '_I___' cuando ingrese la letra 'I' y la palabra seleccionada sea 'TIGRE'" do
		tablero = Tablero.new
		tablero.adivinar_letra("I")
		tablero.palabra.should == '_I___'
	end

	it "Deberia ver numero de fallos en '0' cuando cuando inicio el juego" do
		tablero = Tablero.new
		tablero.numero_fallas.should == 0
	end

	it "Deberia ver numero de fallos en '1' cuando ingrese la letra 'A' y la palabra seleccionada es 'TIGRE'" do
		tablero = Tablero.new
		tablero.adivinar_letra("A")
		tablero.numero_fallas.should == 1
	end
	
	it "Deberia ganar solo cuando acierto todas las letras" do
		tablero = Tablero.new
		tablero.adivinar_letra("T")
		tablero.adivinar_letra("I")
		tablero.adivinar_letra("G")
		tablero.adivinar_letra("R")
		tablero.ha_ganado.should == false
	end

	it "Deberia ganar cuando acierto todas las letras" do
		tablero = Tablero.new
		tablero.adivinar_letra("T")
		tablero.adivinar_letra("I")
		tablero.adivinar_letra("G")
		tablero.adivinar_letra("R")
		tablero.adivinar_letra("E")
		tablero.ha_ganado.should == true
	end

	it "Deberia perder cuando fallo 6 veces y mostrar la palabra seleccionada" do
		tablero = Tablero.new
		tablero.adivinar_letra("X")
		tablero.adivinar_letra("X")
		tablero.adivinar_letra("X")
		tablero.adivinar_letra("X")
		tablero.adivinar_letra("X")
		tablero.adivinar_letra("X")
		tablero.ha_perdido.should == true
		tablero.palabra_seleccionada.should == "TIGRE"
	end
end
