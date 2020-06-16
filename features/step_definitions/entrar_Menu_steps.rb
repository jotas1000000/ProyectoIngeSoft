Given('visito la pagina de instrucciones') do
    visit '/' # Write code here that turns the phrase above into concrete actions
end

Given('presiono el boton link {string}') do |string|
    click_link(string)    # Write code here that turns the phrase above into concrete actions
end

Then('deberia ir a la pagina home del juego {string}') do |string|
    last_response.body.should=~/#{string}/m  # Write code here that turns the phrase above into concrete actions
end