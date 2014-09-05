require 'sinatra'
require_relative 'lib/tablero'

@@tablero = nil
@@letra = nil
@@nombre = nil

configure do
  enable :sessions
end

get '/' do
#	@palabra =  "_____"
#	@n_falla = 0
	@@tablero = nil
	@@letra = nil
	@@nombre = nil
	erb :bienvenida
end

## DREAM TEAM EQUIPO 1: CRISTIAN Y JAIBER

## DREAM TEAM EQUIPO 2: TATIANA Y DENIS
get '/tablero' do
	nombre = params["nombre"]
	categoria = params["categorias"]
	letra = params["letra"]
	nivel = params["niveles"]
	idioma = params["idiomas"]
	
	if @@tablero.nil?	
		@@tablero = Tablero.new(categoria,nivel,idioma)
    end
	
	if letra != nil	
		@@tablero.adivinar_letra(letra)
    end

	@palabra = @@tablero.palabra
	@n_falla = @@tablero.numero_fallas

	if !nombre.nil?
		@@nombre = nombre
	end

	@mensaje = ""
	if 	@@tablero.ha_ganado
		@mensaje = "Ha ganado!"
	elsif @@tablero.ha_perdido
		@palabra = @@tablero.palabra_seleccionada
		@mensaje = "Ha perdido!"
	end 
	erb :tablero
end


