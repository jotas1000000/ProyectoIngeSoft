Given('visito la pagina Home') do
    visit '/Homepage'
end

Given('presiono el botonlink {string}') do |string|
    click_link(string)
end

When('lleno los campos con {string} y {string} y presiono el boton {string}') do |string, string2, string3|
    fill_in('playerOne', :with => string)
    if( string2 != "")
        fill_in('playerTwo', :with => string2)
    end
    click_button(string3)
end
  
When('selecciono los radio buttons {string} , {string} y presiono el boton {string}') do |string, string2, string3|
    if( string != "")
        choose(string)
    end
    choose(string2)
    click_button(string3)
end
When('ingreso en el campo el numero secreto {int} y presiono {string}') do |value, string2|
    fill_in('secretValue', :with => value)
    click_button(string2)
end
Then('deberia ver un titulo {string}') do |string|
    last_response.body.should=~/#{string}/m
end