require 'sinatra'
require './lib/vacasYtoros.rb'
require './lib/GlobalVariables.rb'

@@globalVariables = GlobalVariables.new(2,"1234",VacasYToros.new())


get '/' do
    erb :instrucciones
end

get '/Homepage' do
    @@globalVariables.setCounterTries(2);
    erb :Homepage
end

get '/Play' do
    erb :play
end

get '/EnterNumber' do
    @maxlength = @@globalVariables.getSecretNumber().size.to_s
    @numberTry = @@globalVariables.getCounterTries()
    if (@numberTry == 0)
        @messageResult = "Perdiste ! :("
        erb :endGame
    else 
        erb :interfazJuego
    end
end

post '/Number' do
    @number = params['number']
    @messageResult = '';
    @numberTry = @@globalVariables.getCounterTries()
    @triesRemaining = @@globalVariables.discountCounterTries()
    @result = @@globalVariables.runGame(@number)
    if (@result == '4 toros y 0 vacas')
        @messageResult = "Ganaste ! :)"
        erb :endGame
    elsif (@numberTry == 0)
        @messageResult = "Perdiste ! :("
        erb :endGame
    elsif (@result != '4 toros y 0 vacas')        
        erb :response
    end
end