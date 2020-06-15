require 'sinatra'
require './lib/vacasYtoros.rb'
require './lib/GlobalVariables.rb'

@@globalVariables = GlobalVariables.new(2,"1234",VacasYToros.new())


get '/' do
    erb :instrucciones
end

get '/Homepage' do
    if (@@globalVariables.getCounterTries() != 2)
        @numberTry = @@globalVariables.getCounterTries().to_i
        @@globalVariables.setCounterTries(@numberTry);
        erb :Homepage
    else
        @@globalVariables.setCounterTries(2);
        erb :Homepage
    end
end

get '/Play' do
    erb :play
end

get '/Config' do
   erb :config 
end

post '/secretNumberRegister' do
    @secretnumber = params['secretNumber']
    @@globalVariables.setSecretNumber(@secretnumber)
    @maxlength = @@globalVariables.getSecretNumber().size.to_s
    erb :interfazJuego
end

post '/setCounterTries' do
    @counterTries = params['counterTries']
    @numberTry = @@globalVariables.setCounterTries(@counterTries).to_i
    erb :goMenu
end

get '/EnterNumber' do
    @maxlength = @@globalVariables.getSecretNumber().size.to_s
    @numberTry = @@globalVariables.getCounterTries()
    @secretNumber = @@globalVariables.getSecretNumber()
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
    @secretNumber = @@globalVariables.getSecretNumber()
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