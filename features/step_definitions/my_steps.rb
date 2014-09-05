## DREAM TEAM EQUIPO 1: CRISTIAN Y JAIBER

Given(/^inicio la aplicacion$/) do
  visit '/'
end

Then(/^debo ver el titulo "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver el nivel "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver la categoria "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver el Idioma "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

## DREAM TEAM EQUIPO 2: TATIANA Y DENIS
Given(/^inicio el juego$/) do
  @@tablero = Tablero.new
  visit '/tablero'
end

Given(/^juego ya esta iniciado$/) do
  visit '/tablero'
end

When(/^paso la pantalla de bienvenida$/) do
  
end

Then(/^debo ver el tablero del juego$/) do
  
end

Then(/^debo ver el poste del ahorcado "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver los espacios de la palabra CARRO "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver el boton "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver el campo "(.*?)" para digitar$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver la cabeza del ahorcado por fallo "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^ingresa la letra "(.*?)" en el campo$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^ingresa la letra "(.*?)" en el campo "(.*?)"$/) do |value, field|
  fill_in(field, :with => value)
end

Given(/^intento adivinar la palabra presionando "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^debo ver el campo "(.*?)" en la pantalla$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^escribo el nombre "(.*?)" en el campo "(.*?)"$/) do |value, field|
  fill_in(field, :with => value)
end

Then(/^debo ver el titulo el nombre "(.*?)"$/) do |arg1|
   last_response.body.should =~ /#{arg1}/m
end

Given(/^presiono el boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Given(/^la palabra adivinada es "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end

Then(/^debo ver el mensaje "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^debo ver el tronco del ahorcado por fallo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^debo ver la palabra adivinada "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^debo ver siguiente parte del ahorcado por fallo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^debo ver la palabra correcta "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end


